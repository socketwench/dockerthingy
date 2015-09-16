FROM debian:latest
MAINTAINER your_email@example.com

RUN apt-get update && \
    apt-get -yq install git curl \
                        php5 php5-mysql php5-mcrypt php5-curl php5-cli \
                        mysql-client \
                        supervisor

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer && \
    ln -s /usr/local/bin/composer /usr/bin/composer

RUN git clone https://github.com/drush-ops/drush.git /usr/local/src/drush && \
    cd /usr/local/src/drush && \
    composer install && \
    ln -s /usr/local/src/drush/drush /usr/bin/drush

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-n"]