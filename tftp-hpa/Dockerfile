ARG BUILD_FROM=ghcr.io/hassio-addons/base/amd64:10.2.0
# hadolint ignore=DL3006
FROM ${BUILD_FROM}
ENV LANG C.UTF-8

# Create directory for apache2 to store PID file
#RUN mkdir /run/apache2
#RUN apk --no-cache add apache2 libxml2-dev apache2-utils apache2-mod-wsgi apache2-ssl

RUN apk --no-cache add tftp-hpa bash

#Configure Logging
#RUN sed -i -r 's@Errorlog .*@Errorlog /dev/stderr@i' /etc/apache2/httpd.conf
#RUN echo "Transferlog /dev/stdout" >> /etc/apache2/httpd.conf

COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
