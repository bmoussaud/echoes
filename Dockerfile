FROM jazzdd/alpine-flask:python3
MAINTAINER Benoit Moussaud (bmoussaud@xebialabs.com)
RUN apk add --no-cache curl zip
COPY app  /app/
COPY xebialabs  /xebialabs


