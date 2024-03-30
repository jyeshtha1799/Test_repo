-- models/capital_balance_sheet.sql

SELECT *
FROM {{ source('fgi_stage', 'capital_and_other_selected_balance_sheet_items') }}
