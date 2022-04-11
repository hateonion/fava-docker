FROM python:3.9-slim-buster

RUN apt-get update 

RUN apt-get install -y build-essential git vim \
	&& pip install  fava \
	&& pip install  -f -U git+https://github.com/polarmutex/fava-envelope@master

ENV FAVA_HOST "0.0.0.0"

EXPOSE 5000

ENTRYPOINT [ "fava" ]

