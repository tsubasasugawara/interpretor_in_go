FROM golang:alpine

RUN mkdir -p /go/src

COPY src /go/src
WORKDIR /go/src

RUN apk update &&\
    apk add vim git curl

RUN echo "umask 000" >> ~/.bashrc
