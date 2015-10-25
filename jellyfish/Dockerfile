FROM anderspitman/tidepool-node:latest
MAINTAINER Anders Pitman <tapitman11@gmail.com>

RUN git clone https://github.com/tidepool-org/jellyfish
WORKDIR jellyfish

ENV PORT 9122
ENV SERVICE_NAME jellyfish-local
ENV SERVE_STATIC dist
# so that we can validate the version of the uploader being used
ENV MINIMUM_UPLOADER_VERSION "0.99.0"
# the _schemaVersion that jellyfish will produce
ENV SCHEMA_VERSION 1
# Encryption salt for raw uploads
ENV SALT_DEPLOY itNkczadZ1EeC9fUWR3LnbKFagtYYLOk

ENV MONGO_CONNECTION_STRING "mongodb://tidepool-mongo/streams"

RUN npm run build

ENTRYPOINT ["node", "app.js"]
