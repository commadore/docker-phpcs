FROM php:7.4.8-alpine

LABEL authors="herloct <herloct@gmail.com>, commadore <mcommadore@protonmail.com>"
ENV PHPCS_VERSION=3.5.5

RUN curl -L https://github.com/squizlabs/PHP_CodeSniffer/releases/download/$PHPCS_VERSION/phpcs.phar > /usr/local/bin/phpcs \
    && chmod +x /usr/local/bin/phpcs \
    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

VOLUME ["/project"]
WORKDIR /project

ENTRYPOINT ["phpcs"]
CMD ["--version"]
