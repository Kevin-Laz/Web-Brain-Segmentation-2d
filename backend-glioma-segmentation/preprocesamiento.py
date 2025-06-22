import pydicom
import numpy as np
import cv2
import tensorflow as tf
from scipy.ndimage import label, binary_dilation

# Cargar ambos modelos
brain_model_t1c = tf.keras.models.load_model("brain120x120_t1c_saved", compile=False)
brain_model_t2f = tf.keras.models.load_model("brain120x120_t2f_saved", compile=False)

def procesar_dicom_con_segmentacion(file_path: str, modalidad: str = "t1c") -> np.ndarray:
    if modalidad == "t1c":
        model = brain_model_t1c
    elif modalidad == "t2f":
        model = brain_model_t2f
    else:
        raise ValueError("Modalidad no válida. Usa 't1c' o 't2f'.")

    # Cargar imagen DICOM
    ds = pydicom.dcmread(file_path, force=True)
    img = ds.pixel_array.astype(np.float32)

    # Normalización inicial por imagen completa
    mu = img.mean()
    sigma = img.std() + 1e-8
    norm_img = (img - mu) / sigma

    # Redimensionar a 120x120
    resized = cv2.resize(norm_img, (120, 120), interpolation=cv2.INTER_LINEAR)

    # Predicción de máscara cerebral
    input_tensor = resized[None, ..., None]  # (1, 120, 120, 1)
    pred_mask = model.predict(input_tensor, verbose=0)[0, ..., 0]  # (120, 120)

    # Postprocesamiento: binarización y selección de componente conectada más grande
    mask_bin = (pred_mask >= 0.5).astype(np.uint8)
    struct = np.ones((3, 3), dtype=np.uint8)
    lbl, _ = label(binary_dilation(mask_bin, structure=struct))
    if lbl.max():
        largest = np.argmax(np.bincount(lbl.flat)[1:]) + 1
        refined_mask = (lbl == largest).astype(np.uint8)
    else:
        refined_mask = mask_bin

    # Nueva normalización usando solo los valores cerebrales
    brain_vals = resized[refined_mask == 1]
    if brain_vals.size >= 10:
        mu_brain = brain_vals.mean()
        sigma_brain = brain_vals.std() + 1e-8
    else:
        mu_brain = resized.mean()
        sigma_brain = resized.std() + 1e-8

    norm_brain = (resized - mu_brain) / sigma_brain

    # Aplicar máscara
    masked_img = norm_brain * refined_mask

    return masked_img.astype(np.float32)


def convertir_dicom_a_array(file_path: str) -> np.ndarray:
    ds = pydicom.dcmread(file_path, force=True)
    img = ds.pixel_array.astype(np.float32)

    # Normalización básica
    mu = img.mean()
    sigma = img.std() + 1e-8
    norm_img = (img - mu) / sigma

    # Redimensionar a 120x120
    resized = cv2.resize(norm_img, (120, 120), interpolation=cv2.INTER_LINEAR)

    return resized.astype(np.float32)

def continuar_segmentacion_cerebro(array_120x120: np.ndarray, modalidad: str = "t1c") -> np.ndarray:
    if modalidad == "t1c":
        model = brain_model_t1c
    elif modalidad == "t2f":
        model = brain_model_t2f
    else:
        raise ValueError("Modalidad no válida. Usa 't1c' o 't2f'.")

    # Predicción
    input_tensor = array_120x120[None, ..., None]  # (1, 120, 120, 1)
    pred_mask = model.predict(input_tensor, verbose=0)[0, ..., 0]

    # Postprocesamiento de la máscara
    mask_bin = (pred_mask >= 0.5).astype(np.uint8)
    struct = np.ones((3, 3), dtype=np.uint8)
    lbl, _ = label(binary_dilation(mask_bin, structure=struct))

    if lbl.max():
        largest = np.argmax(np.bincount(lbl.flat)[1:]) + 1
        refined_mask = (lbl == largest).astype(np.uint8)
    else:
        refined_mask = mask_bin

    # Re-normalización usando solo los píxeles cerebrales
    brain_vals = array_120x120[refined_mask == 1]
    if brain_vals.size >= 10:
        mu_brain = brain_vals.mean()
        sigma_brain = brain_vals.std() + 1e-8
    else:
        mu_brain = array_120x120.mean()
        sigma_brain = array_120x120.std() + 1e-8

    norm_brain = (array_120x120 - mu_brain) / sigma_brain

    # Aplicar la máscara
    masked_img = norm_brain * refined_mask

    return masked_img.astype(np.float32)