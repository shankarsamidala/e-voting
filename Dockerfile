FROM python:3.8

ENV PYTHONUNBUFFERED 1 

RUN mkdir /voting

WORKDIR /voting

COPY . /voting/

RUN apt-get update && apt-get -y install gcc

RUN pip install pillow

RUN pip install -r requirements.txt


EXPOSE 8000
