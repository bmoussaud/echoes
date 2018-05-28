FROM jazzdd/alpine-flask:latest
MAINTAINER Benoit Moussaud (bmoussaud@xebialabs.com)
RUN apk add --no-cache curl zip
COPY app  /app/
COPY xebialabs  /xebialabs


