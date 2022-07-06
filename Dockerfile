FROM golang:1.15.2-alpine3.12
ARG VER=2.6.1
RUN adduser -D -u 1001 whitespots whitespots

RUN apk add git build-base curl

COPY . /app

WORKDIR /app

RUN go build -o slurp main.go

ENV PATH="/app:${PATH}"

USER whitespots
ENTRYPOINT []
