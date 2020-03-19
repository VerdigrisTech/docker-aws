FROM busybox:1.31-glibc

COPY aws/ /tmp/aws/
WORKDIR /tmp
RUN ./aws/install
