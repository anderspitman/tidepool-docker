FROM ubuntu:14.04
MAINTAINER Anders Pitman <tapitman11@gmail.com>


# Install wget and build tools
RUN apt-get -y update
RUN apt-get install -y \
    wget \
    build-essential \
    golang-go \
    bzr \
    git-core

# Install node via nvm
RUN wget https://nodejs.org/dist/v4.1.2/node-v4.1.2-linux-x64.tar.gz
RUN tar -xzvf node-v4.1.2-linux-x64.tar.gz
ENV PATH /node-v4.1.2-linux-x64/bin:$PATH
RUN npm install --global gulp
RUN npm install --global mocha

# Install mongo
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list
RUN apt-get -y update && apt-get install -y mongodb-org
RUN mkdir -p /data/db

RUN mkdir ~/tidepool
WORKDIR ~/tidepool

# Get tidepool
RUN git clone https://github.com/tidepool-org/tools
RUN tools/get_current_tidepool_repos.sh
