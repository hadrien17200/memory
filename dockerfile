FROM nginx:latest

# Installer file
RUN apt-get update && apt-get install -y file && rm -rf /var/lib/apt/lists/*

# Copier la conf nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Copier les fichiers HTML
COPY html/ /var/concentration/html/

# Exposer le port 80
EXPOSE 80

# Lancer nginx en foreground
CMD ["nginx", "-g", "daemon off;"]

