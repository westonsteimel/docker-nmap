FROM debian:stretch
MAINTAINER Jessie Frazelle <jess@linux.com>

RUN apt-get update && apt-get install -y \
	nmap \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "nmap" ]
