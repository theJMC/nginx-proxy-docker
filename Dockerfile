FROM nginx
COPY ./nginx.conf.template /nginx.conf.template
CMD ["/bin/sh" , "-c" , "envsubst < /nginx.conf.template > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'"]
