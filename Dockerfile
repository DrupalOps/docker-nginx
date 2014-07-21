FROM drupalops/supervisor

MAINTAINER Steve Oliver "https://github.com/steveoliver"

RUN add-apt-repository -y ppa:nginx/stable

RUN apt-get -y install nginx

RUN mkdir /srv/www
RUN echo "HTML is working" > /srv/www/nginx-container.html

ADD default /etc/nginx/sites-available/default
ADD nginx.conf /etc/nginx/nginx.conf

ADD nginx.sv.conf /etc/supervisor/conf.d/nginx.sv.conf
