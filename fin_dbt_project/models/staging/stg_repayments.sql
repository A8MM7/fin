{{ config(
    materialized='view'
) }}

select
    try_cast(loan_id as string) as loan_id,
    try_cast(report_date as date) as report_date,
    try_cast(principal_balance as double) as principal_balance,
    try_cast(principal_debt as double) as principal_debt,
    try_cast(principal_paid as double) as principal_paid,
    try_cast(interest_paid as double) as interest_paid,
    try_cast(maintenance_fee_paid as double) as maintenance_fee_paid,

    snapshot_ingested_at

from {{ source('bondara_raw', 'ing_repayments') }}
