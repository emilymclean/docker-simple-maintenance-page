ARG NGINX_VERSION=1.29.1
FROM nginx:${NGINX_VERSION}-alpine

LABEL org.opencontainers.image.authors="Emily McLean <emilymcleandeveloper@gmail.com>"
LABEL org.opencontainers.image.url="https://github.com/emilymclean/docker-simple-maintenance-page"
LABEL org.opencontainers.image.documentation="https://github.com/emilymclean/docker-simple-maintenance-page/blob/main/README.md"
LABEL org.opencontainers.image.source="https://github.com/emilymclean/docker-simple-maintenance-page.git"
LABEL org.opencontainers.image.licenses="MIT"

COPY index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]
