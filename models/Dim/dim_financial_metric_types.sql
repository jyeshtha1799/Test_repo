{{ config(materialized='table') }}

with source_data as (
    -- Replace this with the actual extraction from your source table
    select distinct metric_name, description
    from {{ ref('Consolidated_financial_highlights') }}  -- Adjust this to your actual source table reference
)

, ranked_metrics as (
    select
        row_number() over (order by metric_name) as metric_type_id,
        metric_name,
        description
    from source_data
)

select
    metric_type_id,
    metric_name as metric_type,
    description
from ranked_metrics

