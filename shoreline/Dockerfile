FROM anderspitman/tidepool-go:latest
MAINTAINER Anders Pitman <tapitman11@gmail.com>

RUN git clone https://github.com/tidepool-org/shoreline
WORKDIR shoreline

RUN sed -i -e 's/mongodb:\/\/localhost\/user/mongodb:\/\/tidepool-mongo\/user/g' config/server.json
RUN ./build

ENTRYPOINT ["./dist/shoreline"]
