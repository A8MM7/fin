{{ config(
    materialized='view'
) }}

select
    loan_id,
    ap.applicant_id as customer_id,
    ap.loan_product_type,
    report_date,
    principal_balance,
    principal_debt,
    principal_paid,
    interest_paid,
    maintenance_fee_paid

from {{ ref('int_repayments') }} r

left join {{ ref('dim_loan_applications') }} ap 
    on r.loan_id = ap.issued_loan_id
