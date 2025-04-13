FROM node:18

# Crear directorio de trabajo
WORKDIR /app

# Instalar n8n de forma global
RUN npm install -g n8n

# Variables de entorno necesarias
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=superclave123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-pizzeria.onrender.com

EXPOSE 5678

CMD ["n8n"]
