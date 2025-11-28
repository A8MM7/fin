{{ config(
    materialized='table'
) }}

with cte0 as (

    select
        *

    from {{ ref('stg_loan_applications') }}

)

select
    application_id,
    applicant_id,
    country_code,
    loan_product_type_id,
    application_started_at,
    requested_amount,
    if(issued_loan_id == 'null', null, issued_loan_id) as issued_loan_id,
    loan_issued_at,
    issued_amount,
    dbt_valid_from,
    dbt_valid_to,
    dbt_scd_id,
    dbt_updated_at

from cte0