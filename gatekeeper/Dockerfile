FROM anderspitman/tidepool-node:latest
MAINTAINER Anders Pitman <tapitman11@gmail.com>

RUN git clone https://github.com/tidepool-org/gatekeeper
WORKDIR gatekeeper

RUN npm install

ENV PORT=9123
ENV SERVICE_NAME=gatekeeper-local
ENV GATEKEEPER_SECRET="This secret is used to encrypt the groupId stored in the DB for gatekeeper"
ENV MONGO_CONNECTION_STRING "mongodb://tidepool-mongo/gate"

ENTRYPOINT ["node", "index.js"]
