FROM alpine

RUN apk add --no-cache \
    mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN adduser -D webler

RUN mkdir /usercode && chown webler /usercode
WORKDIR /usercode

USER webler

ENTRYPOINT ["/entrypoint.sh"]