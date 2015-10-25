FROM anderspitman/tidepool-common:latest
MAINTAINER Anders Pitman <tapitman11@gmail.com>

WORKDIR /root

# Install wget and build tools
RUN apt-get -y update
RUN apt-get install -y \
    golang-go \
    bzr \
    git-core

RUN mkdir /root/tidepool
WORKDIR /root/tidepool

RUN git clone https://github.com/tidepool-org/tools
ENV PATH /root/tidepool/tools/:$PATH
