# Imagen base con Python 3.11 slim
FROM python:3.11-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia primero requirements.txt para cacheo de dependencias
COPY requirements.txt .

# Instala pip y dependencias del sistema necesarias
RUN apt-get update && apt-get install -y \
    build-essential \
    libgl1 \
    libglib2.0-0 \
 && rm -rf /var/lib/apt/lists/*


# Instala las dependencias de Python
RUN pip install --no-cache-dir --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

# Copia todo el contenido del proyecto al contenedor
COPY . .

# Elimina carpetas innecesarias del entorno local
RUN rm -rf __pycache__ venv temp

# Expone el puerto 8080, requerido por Google Cloud Run
EXPOSE 8080

# Comando de arranque
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
