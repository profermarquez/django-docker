# Usa una imagen oficial de Python 3.12 como base
FROM python:3.12-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /mysite

# Copia los archivos locales a la ruta de trabajo en el contenedor
COPY . /mysite/

# Instala las dependencias del proyecto
RUN pip install requirements.txt

# Expone el puerto 8000 para el contenedor
EXPOSE 8000

# Comando por defecto para ejecutar el servidor de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
