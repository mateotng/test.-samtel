# WordPress Project

Este proyecto configura y despliega una instancia de WordPress utilizando Docker, Docker Compose y Kubernetes.

## Contenido

- `Dockerfile`: Archivo Docker para crear la imagen de WordPress.
- `docker-compose.yml`: Configuración de Docker Compose para levantar WordPress y MariaDB.
- `k8s/`: Carpeta que contiene los archivos de configuración de Kubernetes.
  - `deployment.yml`: Configuración de los despliegues de WordPress y MariaDB.
  - `service.yml`: Configuración de los servicios de WordPress y MariaDB.
  - `ingress.yml`: Configuración del Ingress para exponer WordPress externamente.
  - `environment/`: Carpeta que contiene configuraciones adicionales como `configMap.yml`.
- `.github/workflows/ci-cd-pipeline.yml`: Pipeline de CI/CD para construir y desplegar la aplicación.
- `README.md`: Este archivo con la descripción del proyecto.

## Instrucciones

### Docker

Para construir y ejecutar el proyecto localmente usando Docker:

1. Construye la imagen de Docker:
   docker build -t my-wordpress:latest .

2. Levanta los servicios usando Docker Compose:
    docker-compose up

3. Kubernetes

Aplica las configuraciones de Kubernetes:
    kubectl apply -f k8s/deployment.yml
    kubectl apply -f k8s/service.yml
    kubectl apply -f k8s/ingress.yml

- Habilita el Ingress en Minikube (si estás usando Minikube):
    minikube addons enable ingress
    minikube tunnel

4. CI/CD
Este proyecto incluye un pipeline de CI/CD usando GitHub Actions. El pipeline construye y publica la imagen de Docker, y despliega la aplicación en Kubernetes.

Nota: Asegúrate de configurar los secretos necesarios en GitHub Actions.