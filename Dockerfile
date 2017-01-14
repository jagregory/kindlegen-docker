FROM alpine
MAINTAINER James Gregory <james@jagregory.com>

# download kindlegen and install it to /usr/bin
RUN wget http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz -O - | tar -xzf - -C /usr/bin kindlegen

RUN mkdir -p /source
WORKDIR /source

ENTRYPOINT ["kindlegen"]
