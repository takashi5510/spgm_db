FROM postgres:10.1

ENV POSTGRES_USER=spgm
ENV POSTGRES_PASSWORD=spgm
ENV POSTGRES_DB=spgm_dev

EXPOSE 5432

COPY *.sql /docker-entrypoint-initdb.d/

#CMD psql -f /docker-entrypoint-initdb.d/01_createdb.sql -U postgres
