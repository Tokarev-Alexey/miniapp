FROM nginx:alpine

# Копируем наш HTML файл
COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

# Открываем порт
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
