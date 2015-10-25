FROM anderspitman/tidepool-node:latest
MAINTAINER Anders Pitman <tapitman11@gmail.com>

RUN git clone https://github.com/tidepool-org/tools

ENV HTTP_PORT 8009
ENV RULES `cat tools/styx_rules.json`
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

ENTRYPOINT RULES=`cat ../tools/styx_rules.json` exec node server.js
