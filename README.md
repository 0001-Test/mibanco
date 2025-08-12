# MiBanco API

Esta aplicación es una API REST sencilla construida con Flask, diseñada como ejemplo o base para microservicios. Expone algunos endpoints básicos y está preparada para ejecutarse en contenedores Docker.

## Características principales

- **Framework:** Flask
- **Endpoints:**
  - `GET /api/hola`: Devuelve un mensaje de saludo JSON (`{"mensaje": "Hola MiBanco"}`)
  - `GET /health` y `GET /healthz`: Endpoints de salud para monitoreo, responden con `{"status": "UP", "checks": []}`
- **Despliegue:** Listo para ejecutarse en Docker usando Gunicorn como servidor WSGI

## Estructura de archivos relevante

- `app/app.py`: Código principal de la API Flask
- `app/requirements.txt`: Dependencias del proyecto (Flask, Gunicorn)
- `app/Dockerfile`: Imagen Docker lista para producción

## Instalación y ejecución local

1. Instala las dependencias:
   ```bash
   pip install -r app/requirements.txt
   ```
2. Ejecuta la aplicación:
   ```bash
   python app/app.py
   ```
   La API estará disponible en `http://localhost:80`

## Ejecución con Docker

1. Construye la imagen:
   ```bash
   docker build -t mibanco-api ./app
   ```
2. Ejecuta el contenedor:
   ```bash
   docker run -p 80:80 mibanco-api
   ```

## Ejemplo de uso

```bash
curl http://localhost:80/api/hola
# Respuesta: {"mensaje": "Hola MiBanco"}
```

## Licencia

Ver archivo LICENSE.
