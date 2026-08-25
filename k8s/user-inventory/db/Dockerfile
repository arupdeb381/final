# Use official PostgreSQL image as the base
FROM postgres:16-alpine

# Copy database initialization script
COPY init.sql /docker-entrypoint-initdb.d/init.sql
