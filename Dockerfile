FROM debian:bullseye
RUN apt-get update; apt-get -y install pdns-server pdns-backend-bind
COPY named.conf /etc/powerdns
COPY test.malicious.com /var/lib/powerdns/zones.slave.d/
RUN pdnsutil list-zone test.malicious.com 

