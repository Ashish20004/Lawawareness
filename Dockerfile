# Use official Nginx base image
FROM nginx:alpine

# Clear the default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your local HTML/CSS files into the container
COPY . /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Run Nginx in the foreground (required for Docker to keep container running)
CMD ["nginx", "-g", "daemon off;"]
