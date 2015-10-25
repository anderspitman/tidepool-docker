FROM anderspitman/tidepool-common:latest
MAINTAINER Anders Pitman <tapitman11@gmail.com>

WORKDIR /root

# Install wget and build tools
RUN apt-get -y update
RUN apt-get install -y \
    wget \
    git-core

# Install node via nvm
RUN wget https://nodejs.org/dist/v4.1.2/node-v4.1.2-linux-x64.tar.gz; \
    tar -xzvf node-v4.1.2-linux-x64.tar.gz; \
    rm -rf node-v4.1.2-linux-x64.tar.gz

ENV PATH /root/node-v4.1.2-linux-x64/bin:$PATH

RUN mkdir /root/tidepool
WORKDIR /root/tidepool
