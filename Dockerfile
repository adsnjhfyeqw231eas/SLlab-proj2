FROM ubuntu
LABEL "maintainer"="tguha@simplilearn.net"
RUN apt-get update
RUN apt-get install -y nginx tree
RUN useradd tguha
ENV environment production
ENV Team DevOPS
COPY index.nginx-debian.html /var/www/html
CMD nginx -g 'daemon off;'
