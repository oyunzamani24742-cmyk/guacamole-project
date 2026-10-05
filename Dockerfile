ROM guacamole/guacamole:latest AS schema-extractor

FROM postgres:15-alpine
COPY --from=schema-extractor /opt/guacamole/bin/initdb.sh /docker-entrypoint-initdb.d/01-initdb.sh
RUN chmod +x /docker-entrypoint-initdb.d/01-initdb.sh
