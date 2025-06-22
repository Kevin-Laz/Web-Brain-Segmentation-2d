from fastapi import FastAPI, Form, UploadFile, File
from fastapi.middleware.cors import CORSMiddleware
from preprocesamiento import procesar_dicom_con_segmentacion
from segmentacion_glioma import segmentar_glioma
from utils import read_ids_from_txt, generar_mapa_ids_normalizados
import shutil
import os
from fastapi.responses import StreamingResponse
from PIL import Image
import io
import numpy as np

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:4200"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Leer IDs para mapear pacientes conocidos
samples_train = read_ids_from_txt('train.txt')
samples_val = read_ids_from_txt('val.txt')
samples_test = read_ids_from_txt('test.txt')
id_map = generar_mapa_ids_normalizados(samples_train + samples_val + samples_test)

@app.post("/procesar-dcm")
async def procesar_dcm(file: UploadFile = File(...), modalidad: str = Form("t1c")):
    os.makedirs("temp", exist_ok=True)
    temp_path = f"temp/{file.filename}"

    with open(temp_path, "wb") as buffer:
        shutil.copyfileobj(file.file, buffer)

    try:
        img_array = procesar_dicom_con_segmentacion(temp_path, modalidad)

        # Normalizar para visualizar
        img_vis = ((img_array - img_array.min()) / (img_array.ptp() + 1e-8) * 255).astype(np.uint8)
        img_pil = Image.fromarray(img_vis)
        # Guardar imagen preprocesada
        processed_path = f"temp/{file.filename}_processed.png"
        img_pil.save(processed_path, format="PNG")

        buf = io.BytesIO()
        img_pil.save(buf, format="PNG")
        buf.seek(0)

        return StreamingResponse(buf, media_type="image/png")

    except Exception as e:
        return {"error": f"No se pudo procesar el archivo: {str(e)}"}


@app.post("/segmentar-glioma")
async def segmentar_glioma_endpoint(
    file: UploadFile = File(...),
    modalidad: str = Form("t1c"),
    slice_index: int = Form(0),
    patient_id: str = Form("unknown")
):
    os.makedirs("temp", exist_ok=True)
    processed_path = f"temp/{file.filename}_processed.png"

    try:
        # Leer imagen procesada (PNG), escala y normaliza
        img = Image.open(processed_path).convert("L")
        img_array = np.array(img).astype(np.float32) / 255.0
        img_array = (img_array - img_array.mean()) / (img_array.std() + 1e-8)

        # Calcular z_norm y id_norm
        z_group = slice_index // 4
        z_norm = z_group / ((155 // 4) - 1) if slice_index >= 0 else 0.5
        id_base = patient_id.split("-000")[0]
        id_norm = id_map.get(id_base, 1.0)  # 1.0 si no está en el mapeo

        # Crear input multicanal
        c1 = img_array
        c2 = np.ones_like(c1) * z_norm
        c3 = np.ones_like(c1) * id_norm
        input_tensor = np.stack([c1, c2, c3], axis=-1)[None, ...]  # (1, 120, 120, 3)

        # Segmentar
        glioma_mask = segmentar_glioma(modalidad, input_tensor)

        # Convertir a imagen para devolver
        img_vis = (glioma_mask * 255).astype(np.uint8)
        img_pil = Image.fromarray(img_vis)
        buf = io.BytesIO()
        img_pil.save(buf, format="PNG")
        buf.seek(0)

        return StreamingResponse(buf, media_type="image/png")

    except Exception as e:
        return {"error": f"No se pudo segmentar el glioma: {str(e)}"}
    
@app.post("/fusionar-glioma")
async def fusionar_glioma_endpoint(
    file_t1c: UploadFile = File(...),
    file_t2f: UploadFile = File(...),
    slice_index: int = Form(0),
    patient_id: str = Form("unknown")
):
    try:
        os.makedirs("temp", exist_ok=True)

        # Guardar archivos temporalmente
        path_t1c = f"temp/{file_t1c.filename}"
        path_t2f = f"temp/{file_t2f.filename}"
        with open(path_t1c, "wb") as buffer:
            buffer.write(await file_t1c.read())
        with open(path_t2f, "wb") as buffer:
            buffer.write(await file_t2f.read())

        # Convertir a arrays y normalizar
        def cargar_y_normalizar(path):
            img = Image.open(path).convert("L")
            arr = np.array(img).astype(np.float32) / 255.0
            return (arr - arr.mean()) / (arr.std() + 1e-8)

        img_t1c = cargar_y_normalizar(path_t1c)
        img_t2f = cargar_y_normalizar(path_t2f)

        # Calcular z_norm e id_norm
        z_norm = slice_index // 4 / ((155 // 4) - 1) if slice_index >= 0 else 0.5
        id_base = patient_id.split("-000")[0]
        id_norm = id_map.get(id_base, 1.0)

        # Obtener predicciones
        mask_t1c = segmentar_glioma("t1c", img_t1c, z_norm, id_norm)
        mask_t2f = segmentar_glioma("t2f", img_t2f, z_norm, id_norm)

        # Fusión simple (media ponderada)
        alpha = 0.25
        fused_mask = alpha * mask_t1c + (1 - alpha) * mask_t2f
        fused_mask_bin = (fused_mask >= 0.5).astype(np.uint8)

        # Convertir a imagen
        img_out = Image.fromarray((fused_mask_bin * 255).astype(np.uint8))
        buf = io.BytesIO()
        img_out.save(buf, format="PNG")
        buf.seek(0)

        return StreamingResponse(buf, media_type="image/png")

    except Exception as e:
        return {"error": f"No se pudo realizar la fusión: {str(e)}"}