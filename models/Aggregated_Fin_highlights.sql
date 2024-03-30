

WITH financial_highlights AS (
  SELECT
    SUM(CAST(REPLACE(NONE_NET_INCOME, ',', '') AS FLOAT)) AS total_net_income,
    AVG(CAST(REPLACE(RETURN_ON_COMMON_EQUITY__ROE__NONE, '%', '') AS FLOAT)) AS avg_roe,
    AVG(CAST(REPLACE(RETURN_ON_TANGIBLE_COMMON_EQUITY__ROTCE___A__NONE, ',', '') AS FLOAT)) AS avg_rotce
  FROM {{ ref('Consolidated_financial_highlights') }}
)

SELECT
  total_net_income,
  avg_roe,
  avg_rotce
FROM financial_highlights

