FROM dylanlindgren/docker-laravel-phpfpm
MAINTAINER Ron Darby http://opentechsolutions.co.za

RUN echo xdebug.max_nesting_level=512 >> /etc/php5/mods-available/xdebug.ini

WORKDIR /tmp

RUN apt-get install -y curl git php5-mcrypt php5-gd && \
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update && \
    apt-get remove --purge curl -y && \
    apt-get clean
