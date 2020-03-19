FROM alpine:3.11

ADD aws /tmp/aws
WORKDIR /tmp
RUN ./install
