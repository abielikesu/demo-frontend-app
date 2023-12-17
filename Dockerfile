#
# Production Container
#
FROM nginx as final

# Copy html files
COPY www /usr/share/nginx/html

# Copy NginX configuration files
COPY config/nginx /etc/nginx/conf.d
