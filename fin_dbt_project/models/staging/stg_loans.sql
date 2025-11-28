{{ config(
    materialized='view'
) }}

select
    try_cast(loan_id as string) as loan_id,
    try_cast(loan_status as string) as loan_status,
    try_cast(loan_issued_at as timestamp) as loan_issued_at,
    try_cast(loan_repaid_at as timestamp) as loan_repaid_at,
    try_cast(principal_balance as double) as principal_balance,
    try_cast(principal_debt as double) as principal_debt,
    try_cast(principal_paid_total as double) as principal_paid_total,
    try_cast(interest_paid_total as double) as interest_paid_total,
    try_cast(maintenance_fee_paid_total as double) as maintenance_fee_paid_total,
    
    snapshot_ingested_at

from {{ source('bondara_raw', 'ing_loans') }}
