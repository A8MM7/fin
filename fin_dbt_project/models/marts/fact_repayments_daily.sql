{{ config(
    materialized='view'
) }}

select
    loan_id,
    report_date,
    principal_balance,
    principal_debt,
    principal_paid,
    interest_paid,
    maintenance_fee_paid

from {{ ref('int_repayments') }}
