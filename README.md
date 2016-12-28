# Docker iodine server

Build and run:

```
docker build -t iodine .
docker run --rm -ti --privileged -p 53:53/udp -e IODINE_HOST=<tunneldomain> -e IODINE_PASSWORD=<pass> iodine
```

Run from docker hub:

```
docker run -d --restart=always --privileged -p 53:53/udp -e IODINE_HOST=<tunneldomain> -e IODINE_PASSWORD=<pass> -e
EXTERNAL_IP=<externalserverip> --name iodine asmaps/iodine
```


!!! WARNING !!!
via iodine's own [man page](http://code.kryo.se/iodine/iodine_manpage.html) "**`Only the first 32 characters will be used.`**" for the password.
