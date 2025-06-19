import pydicom
import numpy as np
import cv2
import tensorflow as tf
from scipy.ndimage import label, binary_dilation


brain_model_t1c = tf.keras.models.load_model("brain120x120_t1c_saved", compile=False)

def procesar_dicom_con_segmentacion(file_path: str) -> np.ndarray:
    ds = pydicom.dcmread(file_path, force=True)
    img = ds.pixel_array.astype(np.float32)

    mu = img.mean()
    sigma = img.std() + 1e-8
    norm_img = (img - mu) / sigma

    resized = cv2.resize(norm_img, (120, 120), interpolation=cv2.INTER_LINEAR)

    input_tensor = resized[None, ..., None]
    pred_mask = brain_model_t1c.predict(input_tensor, verbose=0)[0, ..., 0]

    mask_bin = (pred_mask >= 0.5).astype(np.uint8)
    struct = np.ones((3, 3), dtype=np.uint8)
    lbl, _ = label(binary_dilation(mask_bin, structure=struct))
    if lbl.max():
        largest = np.argmax(np.bincount(lbl.flat)[1:]) + 1
        refined_mask = (lbl == largest).astype(np.uint8)
    else:
        refined_mask = mask_bin

    brain_vals = resized[refined_mask == 1]
    mu_brain = brain_vals.mean() if brain_vals.size >= 10 else resized.mean()
    sigma_brain = brain_vals.std() + 1e-8 if brain_vals.size >= 10 else resized.std() + 1e-8
    norm_brain = (resized - mu_brain) / sigma_brain

    masked_img = norm_brain * refined_mask

    return masked_img
