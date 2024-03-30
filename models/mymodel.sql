-- models/my_model.sql
SELECT *
FROM {{ source('raw_data_source', 'CAPITAL_AND_OTHER_SELECTED_BALANCE_SHEET_ITEMS') }}
-- Replace 'CAPITAL_AND_OTHER_SELECTED_BALANCE_SHEET_ITEMS' with the name of the table you want to query
