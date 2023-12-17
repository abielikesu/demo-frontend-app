# Demo Application - Front End

# Run in Docker, using a default NginX image
```
# Create the container
sudo docker container create --publish 8081:80 --name demo-front-end nginx

# Copy the html files
sudo docker cp www/index.html demo-front-end:/usr/share/nginx/html/index.html

# Copy the NginX config files
# The config file is generated by asCloud using Ansible
sudo docker cp config/nginx/nginx.conf demo-front-end:/etc/nginx/conf.d/default.conf

# Start the application
sudo docker container start demo-front-end
```
