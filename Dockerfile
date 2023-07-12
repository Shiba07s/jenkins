# Use the official NGINX base image
FROM nginx

# Copy custom configuration file to NGINX configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files to NGINX web directory
COPY static-files /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX server when the container launches
CMD ["nginx", "-g", "daemon off;"]
