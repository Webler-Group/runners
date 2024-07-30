FROM alpine

RUN apk add --no-cache clojure

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN adduser -D webler

RUN mkdir /usercode && chown webler /usercode
WORKDIR /usercode

USER webler

ENTRYPOINT ["/entrypoint.sh"]

