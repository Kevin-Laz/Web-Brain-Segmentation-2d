import numpy as np
import tensorflow as tf
import cv2

model_t1c = tf.keras.models.load_model("model_t1c_saved", compile=False)
model_t2f = tf.keras.models.load_model("model_t2f_saved", compile=False)

def segmentar_glioma(modalidad: str, imagen_procesada: np.ndarray, 
                    z_norm: float = 0.5, id_norm: float = 0.0) -> np.ndarray:
    if modalidad == "t1c":
        model = model_t1c
    elif modalidad == "t2f":
        model = model_t2f
    else:
        raise ValueError("Modalidad no reconocida. Usa 't1c' o 't2f'.")

    pred_mask = model.predict(imagen_procesada, verbose=0)[0, ..., 0]
    return pred_mask
