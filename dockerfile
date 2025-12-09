# Use official lightweight NGINX image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files
COPY index.html resume.pdf styles.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# NGINX runs automatically
