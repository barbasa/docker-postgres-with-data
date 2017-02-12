FROM postgres:latest
VOLUME ["/var/lib/postgresql/data"]
COPY ./pgdata /var/lib/postgresql/data
CMD ["/bin/true"]
