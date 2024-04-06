{{ config(materialized='table') }}

WITH quarters_data AS (
    SELECT * FROM (
        VALUES
            (1, 2023, '1Q23', '2023-01-01', '2023-03-31'),
            (2, 2023, '2Q23', '2023-04-01', '2023-06-30'),
            (3, 2023, '3Q23', '2023-07-01', '2023-09-30'),
            (4, 2023, '4Q23', '2023-10-01', '2023-12-31')
            -- Extend beyond 2023 as needed
    ) AS t(quarter_id, year, quarter, start_date, end_date)
)

SELECT
    quarter_id,
    year,
    quarter,
    start_date::DATE,
    end_date::DATE
FROM quarters_data
