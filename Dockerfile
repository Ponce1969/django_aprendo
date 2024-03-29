#imagen base

FROM python:3.10.4-slim-bullseye

# Setear Variables de entorno
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Crear directorio de trabajo
WORKDIR /code

# Instalar dependencias
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Establecer el usuario y el grupo
ARG UID
ARG GID
RUN addgroup --gid $GID appgroup && adduser --uid $UID --ingroup appgroup appuser
USER appuser

# Copiar archivos
COPY . .
