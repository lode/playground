FROM phpdockerio/php:8.1-fpm
WORKDIR "/application"

# user/group to use for creating a user inside docker
# this way the host's and docker's user both can change each other's files
ARG USER_ID
ARG GROUP_ID

# create developer user
RUN groupadd -f developers
RUN echo "creating user with UID=${USER_ID} AND GID=${GROUP_ID}"
RUN useradd -u ${USER_ID} -g ${GROUP_ID} -d /home/developer -g developers -m -s /bin/bash developer 2>/dev/null
#RUN mkdir -m700 /home/developer/.ssh/ && ssh-keyscan github.com >> /home/developer/.ssh/known_hosts
#RUN chown developer:developers /home/developer/.ssh/

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        git \ 
        php8.1-gd \ 
        php8.1-intl \ 
        php8.1-mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN sed -i "s/user = www-data/user = developer/g" /etc/php/8.1/fpm/pool.d/www.conf
RUN sed -i "s/group = www-data/group = developers/g" /etc/php/8.1/fpm/pool.d/www.conf
