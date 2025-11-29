{{ config(
    materialized = 'incremental',
    incremental_strategy = 'merge',
    unique_key = ['loan_id', 'report_date'],
    on_schema_change = 'sync'
) }}

with src as (

    select
        loan_id,
        report_date,
        principal_balance,
        principal_debt,
        principal_paid,
        interest_paid,
        maintenance_fee_paid,

        snapshot_ingested_at

    from {{ ref('stg_repayments') }}

    {% if is_incremental() %}
        where snapshot_ingested_at > coalesce((select max(snapshot_ingested_at) from {{ this }}), '1900-01-01')
    {% endif %}

)

select 
    *

from src