FROM ubuntu:20.04
RUN apt-get update -y && \
    apt-get install -y \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg \
      mysql-client \
      postgresql-client \
      python \
      python3-pip \
      unzip \
      vim \ 
      wget && \
    pip3 install aws aws-shell confluent_kafka

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add - && \
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list && \
    apt-get update -y && \
    apt-get install -y mongodb-org-shell
