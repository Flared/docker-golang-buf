ARG GOLANG_VERSION="1.23.3"
FROM golang:${GOLANG_VERSION}-alpine3.19

ARG BUF_VERSION="1.47.2"

RUN apk add curl

RUN curl -sSL \
      "https://github.com/bufbuild/buf/releases/download/v${BUF_VERSION}/buf-$(uname -s)-$(uname -m)" \
      -o "/usr/local/bin/buf" \
    && chmod +x "/usr/local/bin/buf"
