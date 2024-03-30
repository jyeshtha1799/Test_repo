-- models/capital_and_other_selected_balance_sheet_items.sql

SELECT *
FROM {{ source('raw_data_source', 'CONSOLIDATED_FINANCIAL_HIGHLIGHTS') }}
