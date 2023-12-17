#
# Production Container
#
FROM nginx as final

# Copy html files
COPY www/index.html /usr/share/nginx/html/index.html

# Copy NginX configuration files
COPY config/nginx/nginx.conf /etc/nginx/conf.d/default.conf
