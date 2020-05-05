FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Paris
RUN apt-get update -y && apt-get install nginx -y
RUN apt-get install git -y
RUN rm /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git
RUN cp -r static-website-example/* /var/www/html/
RUN sed -i 's/80 default_server/8080 default_server/g' /etc/nginx/sites-enabled/default
EXPOSE 8080
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
