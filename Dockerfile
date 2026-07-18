FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/
COPY batar.csv /usr/share/nginx/html/
COPY kajplan.xlsx /usr/share/nginx/html/
