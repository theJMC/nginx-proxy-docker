FROM nginx
COPY ./nginx.conf.template /nginx.conf.template

EXPOSE 80

CMD ["/bin/sh" , "-c" , "envsubst '$NGINX_PROXY' < /nginx.conf.template > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'"]
