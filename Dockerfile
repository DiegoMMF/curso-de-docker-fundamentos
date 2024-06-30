FROM nginx:latest

# Path: /usr/share/nginx/html copio el contenido de la carpeta sitio a la carpeta /usr/share/nginx/html
COPY /sitio /usr/share/nginx/html  
