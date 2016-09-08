FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install --upgrade pip
COPY app /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["env.py"]
