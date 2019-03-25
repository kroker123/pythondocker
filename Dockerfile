FROM python:3.7-alpine
MAINTAINER  Fa Brian Ganda Pratama

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements
RUN pip install -r /requirements

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user