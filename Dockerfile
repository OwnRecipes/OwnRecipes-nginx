FROM nginx:latest

COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /scripts
COPY start.sh ./start.sh
