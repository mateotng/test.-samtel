# Use the official WordPress image from the Docker Hub
FROM wordpress:latest

# Set environment variables
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=wordpress
ENV WORDPRESS_DB_NAME=wordpress

# Expose the port WordPress runs on
EXPOSE 80
