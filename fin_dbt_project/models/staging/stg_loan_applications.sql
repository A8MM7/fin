{{ config(
    materialized='view'
) }}

select
    try_cast(application_id as string) as application_id,
    try_cast(applicant_id as string) as applicant_id,
    try_cast(country_code as string) as country_code,
    try_cast(loan_product_type_id as string) as loan_product_type_id,
    try_cast(application_started_at as timestamp) as application_started_at,
    try_cast(requested_amount as double) as requested_amount,
    try_cast(issued_loan_id as string) as issued_loan_id,
    try_cast(loan_issued_at as timestamp) as loan_issued_at,
    try_cast(issued_amount as double) as issued_amount,
    
    dbt_valid_from,
    dbt_valid_to,
    dbt_scd_id,
    dbt_updated_at

from {{ ref('snp_loan_applications') }}