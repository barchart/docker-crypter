#
# Crypter encryption services
#
# docker-build properties:
# TAG=barchart/crypter:latest

FROM barchart/base
MAINTAINER Jeremy Jongsma "jeremy@barchart.com"

ADD crypter.conf /etc/crypter/

VOLUME ["/etc/crypter/keys","/var/run/crypter"]

# Crypter client/server already installed from barchart/base
ENTRYPOINT ["/usr/local/bin/crypter","-c","/etc/crypter/crypter.conf"]
