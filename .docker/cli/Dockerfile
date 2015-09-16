FROM debian:latest
MAINTAINER your_email@example.com

RUN apt-get update && \
    apt-get -yq install curl \
                        php5 php5-mysql php5-mcrypt php5-curl php5-cli \
                        mysql-client \
                        supervisor

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer && \
    ln -s /usr/local/bin/composer /usr/bin/composer

RUN composer global require drush/drush:dev-master && \
    ln -s /root/.composer/vendor/bin/drush /usr/bin/drush

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-n"]