FROM scratch

COPY ca-certificates.crt /etc/ssl/certs/
COPY ca-certificates.crt /opt/influxdb-relay/

COPY influxdb-relay /usr/bin/

WORKDIR /usr/bin
VOLUME /opt/influxdb-relay

EXPOSE 9096

ENTRYPOINT ["./influxdb-relay"]
