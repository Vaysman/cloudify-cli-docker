FROM ubuntu:16.10

MAINTAINER Mikhail Vaysman mikhail.vaysman+docker@gmail.com

RUN apt-get update && apt-get install -y wget && \
    wget http://repository.cloudifysource.org/org/cloudify3/LatestRelease/cloudify_3.4.0~2.ga-402_amd64.deb -qO /cloudify.deb && \
    dpkg -i cloudify.deb && \
    apt-get purge -y --auto-remove  wget && \
    rm cloudify.deb && \
    rm -rf /var/lib/apt/lists/*

