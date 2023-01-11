FROM python:3.9.16-bullseye

RUN apt-get update  \
    && apt-get -y upgrade \
    && pip install --upgrade pip \
    && pip install dql

WORKDIR /app
