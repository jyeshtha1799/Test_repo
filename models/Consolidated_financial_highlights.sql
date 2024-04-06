select
    selected_income_statement_data_none AS Quarters,
    total_net_revenue_none AS NetRevenue_Reported_Basis,
    total_noninterest_expense_none AS NonInterestRevenue_Reported_Basis,
    pre_provision_profit__a__none AS PreProvisionProfit_Reported_Basis,
    provision_for_credit_losses_none AS CreditLosses_Reported_Basis,
    none_net_income AS NetIncome_Reported_Basis,
    total_net_revenue_none_1 AS NetRevenue_Managed_Basis,
    total_noninterest_expense_none_1 AS NonInterestRevenue_Managed_Basis,
    pre_provision_profit__a__none_1 AS PreProvisionProfit_Managed_Basis,
    provision_for_credit_losses_none_1 AS CreditLosses_Managed_Basis,
    none_net_income_1 AS NetIncome_Managed_Basis,
    net_income__none AS Basic_NetIncome_EarningsPerShare,
    none_none AS Diluted_NetIncome_EarningsPerShare,
    average_shares__none AS Basic_AverageShares_EarningsPerShare,
    none_none_1 AS Diluted_AverageShares_EarningsPerShare,
    market_capitalization_none AS MarketCapitalization,
    common_shares_at_period_end_none AS CommonShares_EndPeriod,
    book_value_per_share_none AS BookValuePerShare,
    tangible_book_value_per_share__tbvps___a__none AS Tangible_BookValuePerShare,
    cash_dividends_declared_per_share_none AS cashDividendsPerShare,
    return_on_common_equity__roe__none AS ReturnOn_CommonEquity_ROE,
    return_on_tangible_common_equity__rotce___a__none AS ReturnOn_TangibleCommonEquity_ROTCE ,
    return_on_assets_none AS ReturnOn_Assets,
    common_equity_tier_1__cet1__capital_ratio_none ,
    tier_1_capital_ratio_none,
    total_capital_ratio_none,
    tier_1_leverage_ratio_none,
    supplementary_leverage_ratio__slr__none
from {{ source("raw_data_source", "CONSOLIDATED_FINANCIAL_HIGHLIGHTS") }}

-- models/consolidated_financial_highlights.sql

