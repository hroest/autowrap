# FROM python:3.6.1-alpine
FROM python:3.6


RUN mkdir /usr/src/app
WORKDIR /usr/src/app
RUN pip install numpy
RUN pip install Cython
RUN pip install nose
RUN pip install pytest

COPY . .

RUN py.test tests/


