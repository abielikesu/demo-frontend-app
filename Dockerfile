#
# Production Container
#
FROM nginx as final

# Copy dist files
COPY www /usr/share/nginx/html

# Copy NginX configuration files
COPY config/nginx /etc/nginx/conf.d
