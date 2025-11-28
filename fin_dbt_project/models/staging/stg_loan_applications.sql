{{ config(
    materialized='view'
) }}

select
    cast(application_id as string) as application_id,
    cast(applicant_id as string) as applicant_id,
    cast(country_code as string) as country_code,
    cast(loan_product_type_id as string) as loan_product_type_id,
    cast(application_started_at as timestamp) as application_started_at,
    cast(requested_amount as double) as requested_amount,
    cast(issued_loan_id as string) as issued_loan_id,
    cast(loan_issued_at as timestamp) as loan_issued_at,
    cast(issued_amount as double) as issued_amount,

    snapshot_ingested_at,
    
    dbt_valid_from,
    dbt_valid_to,
    dbt_scd_id,
    dbt_updated_at

from {{ ref('snp_loan_applications') }}