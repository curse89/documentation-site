FROM golang:1.24-alpine3.21

RUN apk update && apk add --no-cache build-base

RUN CGO_ENABLED=1 go install -tags extended,withdeploy github.com/gohugoio/hugo@latest

RUN apk add git