FROM debian:latest
MAINTAINER your_email@example.com

RUN apt-get update
RUN apt-get install -yq apache2

RUN apt-get install -yq php5 php5-mysql php5-imagick php5-imap \
                        php5-mcrypt php5-curl php5-cli php5-gd \
                        php5-sqlite php5-common php-apc php-pear \
                        php5-json php5-memcache php5-intl

COPY docker.dev.conf /etc/apache2/sites-available/docker.dev.conf

RUN a2dissite 000-default && \
    a2ensite docker.dev
    
EXPOSE 80

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]
