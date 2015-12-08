FROM frolvlad/alpine-python2:latest 

MAINTAINER o@21zoo.com

RUN apk -U --no-progress add ca-certificates bash git linux-pam curl openssh gcc build-base python-dev libffi-dev && \
    cd / && git clone https://github.com/zero-db/zerodb && cd /zerodb && python setup.py install && \
    cd / && git clone https://github.com/zero-db/zerodb-server && mv /zerodb-server/server / && rm -rf /zerodb-server

WORKDIR /server

COPY ./files/conf      /conf
COPY ./files/start.sh  /start.sh

RUN mkdir /data

VOLUME /data

EXPOSE 8001 8001

CMD /start.sh
