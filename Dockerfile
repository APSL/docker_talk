FROM ubuntu
MAINTAINER Bernardo Cabezas bcabezas@apsl.net

RUN apt-get -qq update
RUN apt-get install -y python3 && apt-get update

ADD . /talk

EXPOSE 8080
WORKDIR /talk
CMD ["python3", "-m", "http.server", "8080"]

