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