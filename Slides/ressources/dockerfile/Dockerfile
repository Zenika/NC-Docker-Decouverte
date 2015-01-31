FROM debian:jessie
MAINTAINER John Doe <john@doe.com>

RUN apt-get -y update
RUN apt-get -y install git \ 
    openjdk-7-jre
RUN ["echo", "ou comme ça"]

ADD http://bit.ly/1HyjEeA /whale.gif
COPY target/foobar.jar /

VOLUME ["/data"]
EXPOSE 8080

ENV IN_DOCKER=y
WORKDIR /
CMD ["java", "-jar", "/foobar.jar"]
