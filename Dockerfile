# Usa una imagen de Python como base
FROM python:3.8-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requerimientos al contenedor
COPY requirements.txt requirements.txt

# Instala las dependencias de Python
RUN pip install -r requirements.txt

# Copia el contenido del directorio actual al contenedor
COPY . .

# Define el comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]
