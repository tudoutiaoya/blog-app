FROM nginx

WORKDIR /usr/share/nginx/html/
USER root

COPY ./nginx.conf /etc/nginx/conf/nginx.conf

COPY ./dist  /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
