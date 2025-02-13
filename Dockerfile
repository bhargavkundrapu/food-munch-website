# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your website files to the Nginx web server directory
COPY .food-munch.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Command to start Nginx server, if not already included in the base image
# CMD ["nginx", "-g", "daemon off;"]
