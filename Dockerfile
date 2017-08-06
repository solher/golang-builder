FROM golang:1.8-alpine
MAINTAINER Fabien Herfray <herfray.fabien@gmail.com>
RUN apk add --update git
RUN apk add --update make
RUN apk add --update gcc musl-dev
RUN go get github.com/golang/dep/cmd/dep
RUN go get github.com/solher/forklift
RUN go get honnef.co/go/tools/cmd/megacheck