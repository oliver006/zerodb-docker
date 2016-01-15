FROM frolvlad/alpine-python2:latest 

MAINTAINER o@21zoo.com

ENV ZEROBD_SERVER_VERSION 0.1.2

RUN apk -U --no-progress add ca-certificates bash git linux-pam curl openssh gcc build-base python-dev libffi-dev && \
    pip install --upgrade zerodb-server==$ZEROBD_SERVER_VERSION

WORKDIR /server

COPY ./files/conf      /conf
COPY ./files/start.sh  /start.sh

RUN mkdir /data

VOLUME /data

EXPOSE 8001 8001

CMD /start.sh
