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
    countries.country_name as country_name,
    loan_product_types.loan_product_type as loan_product_type,
    application_started_at,
    requested_amount,
    issued_loan_id,
    loan_issued_at,
    issued_amount

from current_version

left join {{ ref('stg_countries') }} as countries
    using (country_code)

left join {{ ref('int_loan_product_types') }} as loan_product_types
    using (loan_product_type_id)