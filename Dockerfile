# syntax=docker/dockerfile:1

FROM php:apache
ARG USER_ID
ARG GROUP_ID

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apt update
RUN apt install -y libicu-dev
RUN docker-php-ext-install intl pdo pdo_mysql
RUN apt install -y git unzip zip mariadb-client

RUN groupadd -f devs
RUN echo "Creating user with UID=${USER_ID} AND GID=${GROUP_ID}" && useradd -u ${USER_ID} -g ${GROUP_ID} -d /home/dev -g devs -m -s /bin/bash dev 2>/dev/null
RUN chown dev:devs /var/www

EXPOSE 80
