# Dockerfile
FROM python:3.11-slim
ENV PIP_DISABLE_PIP_VERSION_CHECK=1 \
   PYTHONDONTWRITEBYTECODE=1 \
   PYTHONUNBUFFERED=1
# Paquetes base
RUN apt-get update && apt-get install -y --no-install-recommends \
   tzdata ca-certificates curl bash \
&& rm -rf /var/lib/apt/lists/*
# Robot + SeleniumLibrary (el navegador vive en otro contenedor)
RUN pip install --no-cache-dir \
   robotframework \
   robotframework-seleniumlibrary
WORKDIR /tests
# Ejecuta todos los .robot y deja reportes en /output
CMD ["bash", "-lc", "robot -d /output ."]