FROM python:3.6.2
MAINTAINER Benoit Moussaud (bmoussaud@xebialabs.com)

RUN apt-get update && apt-get install -y python-pip python-dev curl zip

# Create the group and user to be used in this container
RUN groupadd flaskgroup && useradd -m -g flaskgroup -s /bin/bash flask

RUN pip install flask
EXPOSE 5000
ENTRYPOINT ["python", "/app/app.py"]
COPY app  /app/

RUN chown -R flask:flaskgroup /app
USER flask

#ALPINE RUN apk add --no-cache curl zip
COPY xebialabs  /xebialabs



