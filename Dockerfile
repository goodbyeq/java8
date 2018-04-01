From amazonlinux:latest
MAINTAINER goodbyeQ
USER root

ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk.x86_64

RUN  yum -y update && \
     yum -y install python27-pip python27-devel && \
     pip install --upgrade pip && \
     pip install dumb-init && \
     chmod 755 /usr/local/bin/dumb-init && \
     chown root:root /usr/local/bin/* && \
     chmod 755 /usr/local/bin/*

# Install java
RUN yum -y install shadow-utils java-1.8.0-openjdk appdynamics-javaagent && \
    yum clean all && \
    rm -rf /var/log/*
