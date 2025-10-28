FROM firebirdsql/firebird:5

ARG FIREBIRD_SYSDBA_PASSWORD

ENV FIREBIRD_ROOT_PASSWORD=$FIREBIRD_SYSDBA_PASSWORD \
    FIREBIRD_DATABASE_DEFAULT_CHARSET=UTF8

RUN /usr/local/bin/docker-entrypoint.sh & \
    sleep 10 && \
    kill %1 || true

EXPOSE 3050
