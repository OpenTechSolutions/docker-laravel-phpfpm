FROM dylanlindgren/docker-laravel-phpfpm
MAINTAINER Ron Darby http://opentechsolutions.co.za

RUN echo xdebug.max_nesting_level=524288 >> /etc/php5/mods-available/xdebug.ini
