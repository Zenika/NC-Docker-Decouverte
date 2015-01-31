FROM debian:jessie

RUN apt-get update && apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs

COPY . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080

CMD ["node", "/src/index.js"]


