FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1 

RUN mkdir /voting

WORKDIR /voting

COPY . /voting/

RUN pip install -r requirements.txt

RUN pip install pillow

EXPOSE 8000