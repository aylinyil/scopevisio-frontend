FROM nginx:alpine

# Kopiere HTML-Datei
COPY html/index.html /usr/share/nginx/html/index.html

# Kopiere eigene NGINX-Konfiguration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Port freigeben
EXPOSE 8000

# NGINX starten
CMD ["nginx", "-g", "daemon off;"]
