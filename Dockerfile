FROM nginx:alpine

# Копируем SSL сертификаты
COPY ssl/ /etc/nginx/ssl/
COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 90

CMD ["nginx", "-g", "daemon off;"]
