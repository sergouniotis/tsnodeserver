FROM debian:jessie

RUN apt-get -y update --fix-missing

RUN apt-get install -y nodejs npm

ENV SERVER_HOME /usr/local/tsnodeserver

ADD src ${SERVER_HOME}/src

COPY package.json ${SERVER_HOME}/package.json

RUN cd ${SERVER_HOME} && npm install

EXPOSE 8000
EXPOSE 3000

ENTRYPOINT ["nodejs","/usr/local/tsnodeserver/src/router.js"]
