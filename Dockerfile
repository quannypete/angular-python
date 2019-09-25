FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /simplecrm
WORKDIR /simplecrm
ADD requirements.txt /simplecrm/
RUN pip install --upgrade pip && pip install -r requirements.txt
ADD . /simplecrm/