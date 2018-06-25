FROM nginx:alpine

ADD css /usr/share/nginx/html/css/
ADD js /usr/share/nginx/html/js/
ADD index.html /usr/share/nginx/html/
COPY entry-point.sh /

CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["/entry-point.sh"]
