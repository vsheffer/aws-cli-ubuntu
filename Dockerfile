FROM ubuntu:20.04
RUN  apt-get update -y && \
     apt-get install -y \
       apt-transport-https \
       ca-certificates \
       curl \
       python \
       python3-pip \
       unzip && \
     pip3 install aws aws-shell
