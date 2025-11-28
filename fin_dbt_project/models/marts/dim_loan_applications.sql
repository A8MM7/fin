{{ config(
    materialized='table'
) }}

with current_version as (

    select
        *

    from {{ ref('int_loan_applications') }}
    
    where dbt_valid_to is null

)

select
    application_id,
    applicant_id,
    country_code,
    loan_product_type_id,
    application_started_at,
    requested_amount,
    issued_loan_id,
    loan_issued_at,
    issued_amount

from current_version