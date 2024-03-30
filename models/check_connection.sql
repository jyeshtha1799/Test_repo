

SELECT 
  CURRENT_VERSION() as dbt_version,
  CURRENT_DATABASE() as current_database,
  CURRENT_SCHEMA() as current_schema,
  CURRENT_WAREHOUSE() as CURRENT_WAREHOUSE
