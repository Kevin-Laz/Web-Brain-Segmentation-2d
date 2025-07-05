import numpy as np
import tensorflow as tf

# Cargar modelos entrenados para 32x32
model_32_t1c = tf.keras.models.load_model("model_t1c_32x32_saved", compile=False)
model_32_t2f = tf.keras.models.load_model("model_t2f_32x32_saved", compile=False)

def segmentar_glioma_32(modalidad: str, imagen_32x32: np.ndarray) -> np.ndarray:
    if modalidad == "t1c":
        model = model_32_t1c
    elif modalidad == "t2f":
        model = model_32_t2f
    else:
        raise ValueError("Modalidad no reconocida. Usa 't1c' o 't2f'.")

    pred_mask = model.predict(imagen_32x32, verbose=0)[0, ..., 0]
    return pred_mask
