FROM traefik:v3.0

COPY traefik.yml /etc/traefik/dynamic.yml

EXPOSE 80

CMD ["traefik", "--providers.file.filename=/etc/traefik/dynamic.yml", "--entrypoints.web.address=:80"]
