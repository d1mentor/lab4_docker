# Використання базового образу Alpine
FROM ubuntu

# Встановлення пакетів Nginx та supervisord
RUN apt-get update && apt-get install apache2

# Копіювання конфігураційних файлів в образ
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisord.conf

# Вказання команд, які будуть виконані при старті контейнера
CMD ["supervisord", "-c", "/etc/supervisord.conf"]
