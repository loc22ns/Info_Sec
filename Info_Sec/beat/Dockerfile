FROM docker.elastic.co/beats/filebeat-oss:7.15.0


COPY filebeat.yml /usr/share/filebeat/filebeat.yml

USER root
RUN chmod go-w /usr/share/filebeat/filebeat.yml \
    && chown -R root:filebeat /usr/share/filebeat/

WORKDIR /usr/share/filebeat
