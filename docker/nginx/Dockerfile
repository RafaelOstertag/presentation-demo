FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY entry-point.sh /

CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["/entry-point.sh"]
