FROM python:3.6.2rc2

LABEL maintainer "ricardo.chaves@infoglobo.com.br"

ENV PYTHONUNBUFFERED 1

EXPOSE 5000

RUN mkdir /api
WORKDIR /api

ADD . /api

RUN pip install --upgrade pip && \
    pip install -r requirements.txt
