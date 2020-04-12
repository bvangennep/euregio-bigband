FROM ulsmith/alpine-apache-php7

WORKDIR /app/
COPY --from=composer /usr/bin/composer /usr/bin/composer

ADD composer.* ./
RUN composer install --prefer-dist --no-scripts --no-suggest
ADD . .

ENTRYPOINT ["bin/entrypoint"]
