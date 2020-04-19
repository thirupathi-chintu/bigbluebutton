# set the base image
FROM ubuntu:16.04
ARG DEBIAN_FRONTEND=noninteractive

# author
MAINTAINER thirupathi-chintu

RUN apt-get update && apt-get install -y curl apt-transport-https ca-certificates software-properties-common
RUN apt-get -yq install --assume-yes apt-utils
RUN apt-get install -y  build-essential sudo git wget curl net-tools
RUN apt-get update && apt-get install -y wget software-properties-common


RUN wget -qO- https://ubuntu.bigbluebutton.org/bbb-install.sh | bash -s -- -v xenial-220 -s demo.namastegurus.com -e tpcecse@gmail.com

CMD []
