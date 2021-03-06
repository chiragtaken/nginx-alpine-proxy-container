FROM nginx:alpine

MAINTAINER Chirag Tayal <chiragtayal@gmail.com>

RUN apk update && apk add openssl openrc bash

COPY entry.sh /bin/
RUN chmod +x /bin/entry.sh

COPY default.conf /

ENTRYPOINT ["/bin/entry.sh"]

