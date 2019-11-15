FROM python:3.7-alpine
MAINTAINER FESP32

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

# create empty folder
RUN mkdir /app

# switch to app folder
WORKDIR /app

# copy from the local machine to the docker image
COPY ./app /app

RUN adduser -D user
USER user

