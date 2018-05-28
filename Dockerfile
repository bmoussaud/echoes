FROM python:3.6.2
MAINTAINER Benoit Moussaud (bmoussaud@xebialabs.com)

RUN apt-get update && apt-get install -y  curl zip

# Create the group and user to be used in this container
RUN groupadd flaskgroup && useradd -m -g flaskgroup -s /bin/bash flask

RUN pip install flask
EXPOSE 5000
COPY app  /app/

RUN chown -R flask:flaskgroup /app
USER flask
WORKDIR /app

#ALPINE RUN apk add --no-cache curl zip
COPY xebialabs  /xebialabs

CMD [ "python", "app.py"]



