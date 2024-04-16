{{ config(materialized='table') }}

WITH financial_highlights AS (
    SELECT
        -- Replace these column names with the actual non-null columns you've identified
        TOTAL_NET_REVENUE_NONE AS total_net_revenue,
        TOTAL_NONINTEREST_EXPENSE_NONE AS total_noninterest_expense,
        NONE_NET_INCOME AS net_income,
        PROVISION_FOR_CREDIT_LOSSES_NONE AS provision_for_credit_losses
    FROM {{ ref('Consolidated_financial_highlights') }}
),
financial_highlights_continued AS (
    SELECT
        -- Replace these column names with the actual non-null columns you've identified
        TOTAL_ASSETS_NONE AS total_assets,
        NONE_TOTAL_LOANS AS total_loans,
        NONE_TOTAL_DEPOSITS AS total_deposits,
        LONG_TERM_DEBT_NONE AS long_term_debt,
        COMMON_STOCKHOLDERS__EQUITY_NONE AS common_stockholders_equity,
        TOTAL_STOCKHOLDERS__EQUITY_NONE AS total_stockholders_equity
    FROM {{ ref('Consolidated_fin_contd') }}
),
-- Assuming there's a way to logically join these sets (e.g., by reporting date or another common key)
combined AS (
    SELECT
        fh.*,
        fhc.*
    FROM financial_highlights fh
    -- This JOIN condition is hypothetical; adjust based on your actual dataset
    INNER JOIN financial_highlights_continued fhc ON fh.join_key = fhc.join_key
)
SELECT * FROM combined
