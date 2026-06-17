FROM ghcr.io/railwayapp-templates/postgres-ssl:18
USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
 postgresql-18-postgis-3 \
 postgresql-18-pgvector \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p /var/lib/postgresql/data \
 && chown -R postgres:postgres /var/lib/postgresql/data

USER postgres
