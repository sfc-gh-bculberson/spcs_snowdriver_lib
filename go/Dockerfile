FROM golang:1.21

RUN apt-get update \
    && apt-get upgrade -y

RUN useradd --user-group --create-home --no-log-init --shell /bin/bash snowflake

USER snowflake
WORKDIR /home/snowflake

RUN go mod init connection-test \
    && go get -u github.com/snowflakedb/gosnowflake

COPY --chown=snowflake:snowflake ./connection_example.go ./connection_example.go
