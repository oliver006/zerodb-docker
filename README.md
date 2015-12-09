# Zerodb Dockerfile

Run [zerodb](http://www.zerodb.io) in a docker container.

Docker image on [Docker Hub](https://hub.docker.com/r/21zoo/zerodb/)

### How to run this?

```
$ docker pull 21zoo/zerodb
$ docker run -d --name zdb -p 8001:8001 -v /data/zdb:/data 21zoo/zerodb:latest
```


