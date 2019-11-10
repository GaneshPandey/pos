FROM python:3.7-alpine
MAINTAINER Ganesh Pandey "ganesh.pandey255@gmail.com"

ENV PYTHONBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D pizza
USER pizza



