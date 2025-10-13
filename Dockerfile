# Use a lightweight official Nginx image
FROM nginx:alpine

# The Nginx web server runs on port 80 by default
EXPOSE 80

# Remove the default Nginx index.html and replace it with our file.
# We copy index.html from the local directory (where the Dockerfile is)
# into the Nginx content directory.
COPY index.html /usr/share/nginx/html/index.html

COPY img_shanto.jpg /usr/share/nginx/html/img_shanto.jpg

# If you have an image file (img_shanto.jpg) referenced in index.html, 
# ensure it is in the same directory and uncomment the line below:
# COPY img_shanto.jpg /usr/share/nginx/html/img_shanto.jpg

# Nginx starts automatically
CMD ["nginx", "-g", "daemon off;"]
