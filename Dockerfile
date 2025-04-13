FROM n8nio/n8n:1.86.1

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=superclave123
ENV WEBHOOK_URL=https://n8n-whatsapp.onrender.com
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_ENCRYPTION_KEY=clave-super-segura-para-produccion
ENV N8N_RUNNERS_ENABLED=true

HEALTHCHECK CMD curl --fail http://localhost:5678 || exit 1

EXPOSE 5678

CMD ["n8n"]
