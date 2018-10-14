FROM golang:1.11-alpine
MAINTAINER Fabien Herfray <herfray.fabien@gmail.com>
RUN apk add --update --no-cache git openssh make gcc musl-dev
RUN mkdir /root/.ssh && ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts
RUN go get -u github.com/golang/dep/cmd/dep \
    && go get -u github.com/solher/forklift \
    && go get -u golang.org/x/lint/golint \
    && go get -u honnef.co/go/tools/cmd/megacheck
