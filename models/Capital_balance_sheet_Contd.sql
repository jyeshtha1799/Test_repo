SELECT
    CONCAT(
        SUBSTRING(NONE_NONE, 1, 6), 
        REPLACE(SUBSTRING(NONE_NONE, 7), ',', ' '), 
        NONE_NONE_1
    ) AS Date,
    COMMON_STOCKHOLDERS__EQUITY_NONE AS CommonStockHolderEquity,
    LESS__GOODWILL_NONE AS GoodWill,
    LESS__OTHER_INTANGIBLE_ASSETS_NONE AS OtherAssets,
    ADD__CERTAIN_DEFERRED_TAX_LIABILITIES__B__NONE AS TaxLiabilities,
    NONE_TOTAL_TANGIBLE_COMMON_EQUITY AS TotalTangibleCommonEquity,
    COMMON_STOCKHOLDERS__EQUITY_NONE_1 AS Avg_CommonStockHolderEquity,
    LESS__GOODWILL_NONE_1 AS Avg_GoodWill,
    LESS__OTHER_INTANGIBLE_ASSETS_NONE_1 AS Avg_OtherAssets,
    ADD__CERTAIN_DEFERRED_TAX_LIABILITIES__B__NONE_1 AS Avg_TaxLiabilities,
    NONE_TOTAL_TANGIBLE_COMMON_EQUITY_1 AS AvgTangibleCommonEquity,
    GOODWILL_NONE AS IntangibleAssets_GoodWill,
    MORTGAGE_SERVICING_RIGHTS_NONE AS IntangibleAssets_MortgageServicingRights,
    OTHER_INTANGIBLE_ASSETS_NONE AS IntangibleAssets_OtherAssets,
    NONE_TOTAL_INTANGIBLE_ASSETS AS TotalIntangibleAssets,
    CASE 
        WHEN CONCAT(
                SUBSTRING(NONE_NONE, 1, 6), 
                REPLACE(SUBSTRING(NONE_NONE, 7), ',', ' ')
                NONE_NONE_1
            ) = 'Sep 30 2023' THEN '3Q23'
        WHEN CONCAT(
                SUBSTRING(NONE_NONE, 1, 6), 
                REPLACE(SUBSTRING(NONE_NONE, 7), ',', ' '), 
                NONE_NONE_1
            ) = 'Jun 30 2023' THEN '2Q23'
        WHEN CONCAT(
                SUBSTRING(NONE_NONE, 1, 6), 
                REPLACE(SUBSTRING(NONE_NONE, 7), ',', ' '), 
                NONE_NONE_1
            ) = 'Mar 31 2023' THEN '1Q23'
    END AS Quarters
FROM 
    {{ source('raw_data_source', 'CAPITAL_AND_OTHER_SELECTED_BALANCE_SHEET_ITEMS_CONTINUED') }}
