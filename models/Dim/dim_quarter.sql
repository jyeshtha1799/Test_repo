{{ config(materialized='table') }}

WITH quarters_data AS (
    SELECT column1 AS quarter_id, 
           column2 AS year, 
           column3 AS quarter, 
           TO_DATE(column4) AS start_date, 
           TO_DATE(column5) AS end_date
    FROM VALUES
        (1, 2023, '1Q23', '2023-01-01', '2023-03-31'),
        (2, 2023, '2Q23', '2023-04-01', '2023-06-30'),
        (3, 2023, '3Q23', '2023-07-01', '2023-09-30'),
        (4, 2023, '4Q23', '2023-10-01', '2023-12-31')
        -- Add additional rows here as needed
)

SELECT
    quarter_id,
    year,
    quarter,
    start_date,
    end_date
FROM quarters_data
