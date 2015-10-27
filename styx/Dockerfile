FROM anderspitman/tidepool-node:latest
MAINTAINER Anders Pitman <tapitman11@gmail.com>

RUN git clone https://github.com/tidepool-org/tools

ENV HTTP_PORT 8009
ENV DISCOVERY "\
{\
  \"host\": \"localhost:8000\"\
}"
ENV HTTPS_PORT 8010
ENV HTTPS_CONFIG "\
{\
  \"key\": \"../tools/keys/sslKey.pem\",\
  \"cert\": \"../tools/keys/sslCert.pem\"\
}"

RUN git clone https://github.com/tidepool-org/styx
WORKDIR styx
RUN npm install

RUN sed -i -e 's/localhost:9107/tidepool-shoreline:9107/g' ../tools/styx_rules.json
RUN sed -i -e 's/localhost:9122/tidepool-jellyfish:9122/g' ../tools/styx_rules.json
RUN sed -i -e 's/localhost:9123/tidepool-gatekeeper:9123/g' ../tools/styx_rules.json

ENTRYPOINT RULES=`cat ../tools/styx_rules.json` exec node server.js
