FROM nginx
COPY ./nginx.conf.template /nginx.conf.template

EXPOSE 80

CMD ["/bin/sh" , "-c" , "envsubst '$NGINX_PROXY_SCHEME, $NGINX_PROXY_URL, $NGINX_PROXY_PORT' < /nginx.conf.template > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'"]
