# Use an official lightweight Nginx web server image as a base
FROM nginx:alpine
# This line specifies the base image for your container. "nginx:alpine" is an official Nginx image based on the Alpine Linux distribution. 
# Alpine Linux is known for its small size and is commonly used in Docker images.

# Copy your HTML file to the default Nginx web root
COPY index.html /usr/share/nginx/html/
# This line copies your "index.html" file from the local directory where the Dockerfile is located to the container's file system. 
# It places the HTML file in the default Nginx web root, which is where Nginx serves content from. In this case, it's copying "index.html" to "/usr/share/nginx/html/".

# Expose port 80 for HTTP traffic
EXPOSE 80
# This line specifies that the container will listen on port 80 for incoming HTTP traffic. However, it does not actually publish or map any ports to the host machine.
# To make the container accessible from the host, you would need to specify port mappings when running the container.

# Start the Nginx web server when the container is run
CMD ["nginx", "-g", "daemon off;"]
# This line defines the command that will be executed when the container is started. 
#It runs the Nginx web server and keeps it running in the foreground using "daemon off;". This is necessary to keep the container running and serving your HTML content.
