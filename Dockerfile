FROM postgres:latest
VOLUME ["/var/lib/postgresql/data"]
COPY ./pgdata/data /var/lib/postgresql
CMD ["/bin/true"]
