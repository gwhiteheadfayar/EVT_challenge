FROM nginx:latest

COPY ./html/index.html /usr/share/nginx/html
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY ./ssl/nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.crt
COPY ./ssl/nginx-selfsigned.key /etc/nginx/ssl/nginx-selfsigned.key

COPY ./images /usr/share/nginx/html/images
COPY ./pdf /usr/share/nginx/html/pdf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
