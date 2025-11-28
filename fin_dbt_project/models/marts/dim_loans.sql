{{ config(
    materialized='table'
) }}

select
    loan_id,
    loan_status,
    loan_issued_at,
    loan_repaid_at,
    principal_balance,
    principal_debt,
    principal_paid_total,
    interest_paid_total,
    maintenance_fee_paid_total
    
from {{ ref('int_loans') }}
