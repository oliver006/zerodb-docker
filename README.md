# Zerodb Dockerfile

Run [zerodb](http://www.zerodb.io) in a docker container.

### How to run this?

```
$ docker pull 21zoo/zerodb
$ docker run -d --name zdb -p 8001:8001 -v /data/zdb:/data 21zoo/zerodb:latest
```


