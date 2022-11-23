FROM nginx:latest

COPY default.conf /conf/default_http.conf
COPY default_ssl.conf /conf/default_https.conf

WORKDIR /scripts
COPY start.sh ./start.sh
