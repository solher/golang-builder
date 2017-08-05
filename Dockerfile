FROM golang:1.8-alpine
MAINTAINER Fabien Herfray <herfray.fabien@gmail.com>
RUN apk add --update --no-cache git
RUN go get github.com/golang/dep/cmd/dep
RUN go get github.com/solher/forklift
