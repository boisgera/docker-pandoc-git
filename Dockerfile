FROM ubuntu:16.04
MAINTAINER Sébastien Boisgérault <Sebastien.Boisgerault@gmail.com>

COPY build.sh build.sh
RUN chmod u+rwx ./build.sh
RUN ./build.sh
