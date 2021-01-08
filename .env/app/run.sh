#!/bin/bash
#export HOME=/home/container_user
#eval "$(ssh-agent -s)"
#ssh-add /home/container_user/.ssh/id_rsa

cd /code/src

#if [ -f "composer.json" ]; then
#    composer install
#fi

php-fpm7.4 --allow-to-run-as-root -F -y /etc/php/7.4/fpm/php-fpm.conf -c /etc/php/7.4/fpm/Client.