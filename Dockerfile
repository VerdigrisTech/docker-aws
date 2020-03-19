FROM alpine:3.11

COPY aws/ /tmp/aws/
WORKDIR /tmp
RUN ./aws/install
