FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY batar.csv /usr/share/nginx/html/
COPY kajplan.xlsx /usr/share/nginx/html/
