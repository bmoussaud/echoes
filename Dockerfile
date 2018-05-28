FROM python:alpine
MAINTAINER Benoit Moussaud (bmoussaud@xebialabs.com)
RUN pip install flask
EXPOSE 5000
ENTRYPOINT ["python", "/app/app.py"]
COPY app  /app/

RUN apk add --no-cache curl zip
COPY xebialabs  /xebialabs



