{{ config(materialized='table') }}

WITH metric_types AS (
    SELECT
        ROW_NUMBER() OVER (ORDER BY metric_name) AS metric_type_id,
        metric_name
    FROM {{ ref('financial_metric_types') }}
)

SELECT
    metric_type_id,
    metric_name AS metric_type
FROM metric_types
