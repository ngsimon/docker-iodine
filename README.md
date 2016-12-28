# Docker iodine server

Build and run:

```
docker build --tag 'docker-iodine:local' .
docker run --rm -ti --cap-add NET_ADMIN -e IODINE_HOST=<tunneldomain> -e IODINE_PASSWORD=<pass> -e docker-iodine:local
```

Run from docker hub:

```
docker run -d --restart=always --cap-add NET_ADMIN -e IODINE_HOST=<tunneldomain> -e IODINE_PASSWORD=<pass> -e EXTERNAL_IP=<externalserverip> --name iodine thebiggerguy/iodine
```


!!! WARNING !!!
via iodine's own [man page](http://code.kryo.se/iodine/iodine_manpage.html) "**`Only the first 32 characters will be used.`**" for the password.
