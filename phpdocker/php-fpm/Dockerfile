FROM phpdockerio/php:8.1-fpm
WORKDIR "/application"

ARG UID
ARG GID

ENV UID=${UID}
ENV GID=${GID}

RUN addgroup -g ${GID} --system docker
RUN adduser -G docker --system -D -s /bin/sh -u ${UID} docker

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        git \ 
        php8.1-gd \ 
        php8.1-intl \ 
        php8.1-mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN sed -i "s/user  nginx/user docker/g" /etc/nginx/nginx.conf
RUN sed -i "s/user = www-data/user = docker/g" /usr/local/etc/php-fpm.d/www.conf
RUN sed -i "s/group = www-data/group = docker/g" /usr/local/etc/php-fpm.d/www.conf
