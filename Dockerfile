FROM openjdk:8u212-alpine 

RUN addgroup -g 1000 appgroup && \
	adduser -G appgroup --disabled-password \
	 -u 1000 -s /bin/sh -h /home/appuser appuser
USER appuser

ENV JAVA_VERSION 1.8.0_212
ENV JAVA_HOME="/usr/lib/jvm/java-1.8-openjdk"
ENV PATH="${JAVA_HOME}/bin:${PATH}"

WORKDIR /home/appuser
	
