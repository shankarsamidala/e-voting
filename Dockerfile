FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1 

RUN mkdir /voting

WORKDIR /voting

COPY . /voting/

RUN apk update && apk add python3-dev \
                        gcc \
                        libc-dev

RUN pip install pillow

RUN pip install -r requirements.txt


EXPOSE 8000