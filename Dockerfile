FROM liquibase/liquibase:4.10
ADD /changelog /liquibase/changelog
USER 1001
CMD ["sh", "-c", "docker-entrypoint.sh --url=${LIQUIBASE_URL} --username=${LIQUIBASE_USERNAME} --password=${LIQUIBASE_PASSWORD} --changelog-file=$LIQUIBASE_CHANGELOGFILE --default-schema-name=$LIQUIBASE_DEFAULT_SCHEMA_NAME update"]
