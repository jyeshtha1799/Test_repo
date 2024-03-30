-- models/capital_balance_sheet.sql

SELECT *
FROM {{ source('raw_data_source', 'CAPITAL_AND_OTHER_SELECTED_BALANCE_SHEET_ITEMS') }}
