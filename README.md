# Usage

The container in this repo will fail to build due to the segfault:
`docker build .`

Output:
```
$ docker build . 
Sending build context to Docker daemon   72.7kB
Step 1/5 : FROM debian:bullseye
 ---> f776cfb21b5e
Step 2/5 : RUN apt-get update; apt-get -y install pdns-server pdns-backend-bind
 ---> Using cache
 ---> 733d8368ef84
Step 3/5 : COPY named.conf /etc/powerdns
 ---> Using cache
 ---> 6f6edc667316
Step 4/5 : COPY test.malicious.com /var/lib/powerdns/zones.slave.d/
 ---> Using cache
 ---> 56da5a8c7d70
Step 5/5 : RUN pdnsutil list-zone test.malicious.com
 ---> Running in a50c2287cc44
Oct 22 17:27:29 [bindbackend] Done parsing domains, 1 rejected, 1 new, 0 removed
Segmentation fault (core dumped)
The command '/bin/sh -c pdnsutil list-zone test.malicious.com' returned a non-zero code: 139
```

