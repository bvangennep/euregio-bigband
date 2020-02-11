FROM trafex/alpine-nginx-php7

USER root

WORKDIR /var/www/euregio/
COPY --from=composer /usr/bin/composer /usr/bin/composer
ADD nginx_app.conf /etc/nginx/conf.d/

ADD composer.* ./
RUN composer install --prefer-dist --no-scripts --no-suggest
ADD . .

USER nobody

