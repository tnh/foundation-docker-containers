FROM openjdk:8-jre-alpine

RUN apk add --update curl bash && \
    rm -rf /var/cache/apk/*

RUN test -f ${JAVA_HOME}/lib/security/java.security && echo "networkaddress.cache.ttl=30" >> ${JAVA_HOME}/lib/security/java.security
