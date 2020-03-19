FROM debian:stable-slim

COPY aws/ /tmp/aws/
WORKDIR /tmp
RUN ./aws/install
