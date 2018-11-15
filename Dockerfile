FROM openjdk:8-jdk-alpine
MAINTAINER Geraldo Massahud <geraldo.santos@olx.com>

EXPOSE 8080

ARG WIREMOCK_VERSION=2.19.0

ENV	WIREMOCK_JAR=wiremock-standalone-${WIREMOCK_VERSION}.jar

RUN apk --no-cache add ca-certificates curl openssl

USER 0

RUN mkdir -p /wiremock && chmod -R a+rwX /wiremock
WORKDIR /wiremock
RUN curl -o ${WIREMOCK_JAR} http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/${WIREMOCK_VERSION}/${WIREMOCK_JAR}
COPY . /wiremock

WORKDIR /app
CMD cp -r /wiremock/* . && \
    java -jar ${WIREMOCK_JAR} --max-request-journal-entries 5000 --local-response-templating
