{{ config(
    materialized = 'incremental',
    incremental_strategy = 'merge',
    unique_key = 'loan_id',
    on_schema_change = 'sync'
) }}

with src as (

    select
        loan_id,
        loan_status,
        loan_issued_at,
        loan_repaid_at,
        principal_balance,
        principal_debt,
        principal_paid_total,
        interest_paid_total,
        maintenance_fee_paid_total,

        snapshot_ingested_at
        
    from {{ ref('stg_loans') }}

)

select *
from src
