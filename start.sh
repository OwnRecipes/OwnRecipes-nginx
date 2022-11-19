#!/usr/bin/env sh

# NGINX doesn't let you use ENV vars within the conf file.
# We use sed to set the env vars we need.
# Sed replace the API_PORT vars.

sed -i "s/API_PORT/$API_PORT/g" /etc/nginx/conf.d/default.conf;
sed -i "s/ADMIN_URL/${ADMIN_URL:-admin}/g" /etc/nginx/conf.d/default.conf;

# Start the NGINX service.

nginx -g "daemon off;";
