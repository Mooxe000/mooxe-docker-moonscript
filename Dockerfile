FROM mooxe/lua:latest

MAINTAINER FooTearth "footearth@gmail.com"

WORKDIR /root

# system update
RUN \
  apt-get update && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get autoremove -y

RUN \
  apt-get install -y \
  unzip

RUN \
  luarocks install moonscript
