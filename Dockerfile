FROM golang:1.13-alpine
RUN apk add --update --no-cache git openssh make gcc musl-dev
RUN go get -u github.com/solher/forklift \
    && go get -u golang.org/x/lint/golint \
    && go get -u honnef.co/go/tools/cmd/staticcheck
