from fastapi import FastAPI, UploadFile, File
from fastapi.middleware.cors import CORSMiddleware
from preprocesamiento import procesar_dicom_con_segmentacion
from segmentacion_glioma import segmentar_glioma
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

@app.post("/procesar-dcm")
async def procesar_dcm(file: UploadFile = File(...), modalidad: str = "t1c"):
    os.makedirs("temp", exist_ok=True)
    temp_path = f"temp/{file.filename}"

    with open(temp_path, "wb") as buffer:
        shutil.copyfileobj(file.file, buffer)

    try:
        img_array = procesar_dicom_con_segmentacion(temp_path, modalidad)

        
        # Normalizar para visualizar
        img_vis = ((img_array - img_array.min()) / (img_array.ptp() + 1e-8) * 255).astype(np.uint8)
        img_pil = Image.fromarray(img_vis)
        buf = io.BytesIO()
        img_pil.save(buf, format="PNG")
        buf.seek(0)

        return StreamingResponse(buf, media_type="image/png")

    except Exception as e:
        return {"error": f"No se pudo procesar el archivo: {str(e)}"}

from segmentacion_glioma import segmentar_glioma

@app.post("/segmentar-glioma")
async def segmentar_glioma_endpoint(file: UploadFile = File(...), modalidad: str = "t1c"):
    os.makedirs("temp", exist_ok=True)
    temp_path = f"temp/{file.filename}"

    with open(temp_path, "wb") as buffer:
        shutil.copyfileobj(file.file, buffer)

    try:
        img = Image.open(temp_path).convert("L")
        img_array = np.array(img).astype(np.float32) / 255.0
        img_array = (img_array - img_array.mean()) / (img_array.std() + 1e-8)

        glioma_mask = segmentar_glioma(modalidad, img_array)

        # Convertir a imagen para devolver
        img_vis = (glioma_mask * 255).astype(np.uint8)
        img_pil = Image.fromarray(img_vis)
        buf = io.BytesIO()
        img_pil.save(buf, format="PNG")
        buf.seek(0)

        return StreamingResponse(buf, media_type="image/png")

    except Exception as e:
        return {"error": f"No se pudo segmentar el glioma: {str(e)}"}
