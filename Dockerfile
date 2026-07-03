FROM caddy:2-alpine
COPY index.html favicon.svg og.png /srv/
CMD ["sh", "-c", "caddy file-server --root /srv --listen :${PORT:-8080}"]
