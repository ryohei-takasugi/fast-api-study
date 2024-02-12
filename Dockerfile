FROM python:3.9-slim

WORKDIR /opt

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt

RUN apt update && apt upgrade && apt install libsqlite3-0

RUN mkdir -p /home/user
WORKDIR /home/user