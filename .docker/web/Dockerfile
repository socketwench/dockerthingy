FROM debian:wheezy
MAINTAINER your_email@example.com

RUN apt-get update
RUN apt-get install -y apache2

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]
