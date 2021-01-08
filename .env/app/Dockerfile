FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND="noninteractive" && apt update \
 && apt install -y openssh-server curl php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD app.pool.conf /etc/php/7.4/fpm/pool.d/

RUN mkdir -p /run/php

EXPOSE 9000

# runtime
CMD ["php-fpm7.4", "--allow-to-run-as-root", "-F", "-y", "/etc/php/7.4/fpm/php-fpm.conf", "-c", "/etc/php/7.4/fpm/"]