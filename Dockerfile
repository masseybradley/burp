FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY burpsuite_community_linux_v2020_9_1.sh /

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libfreetype-dev=2.10.1-2 \
        libxext-dev=2:1.3.4-0ubuntu1 \
        libxrender-dev=1:0.9.10-1 \
        libxtst-dev=2:1.2.3-1 \
        openjdk-14-jdk=14.0.1+7-1ubuntu1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ./burpsuite_community_linux_v2020_9_1.sh -q --dir /usr/local/BurpSuiteCommunity && \
    rm ./burpsuite_community_linux_v2020_9_1.sh

ENTRYPOINT ["BurpSuiteCommunity"]
