{{ config(
    materialized='view'
) }}

select
    try_cast(borrower_id as string) as borrower_id,
    try_cast(country_of_residency as string) as country_of_residency,
    try_cast(first_name as string) as first_name,
    try_cast(last_name as string) as last_name,
    try_cast(phone_number as string) as phone_number,
    try_cast(email as string) as email,

    dbt_valid_from,
    dbt_valid_to,
    dbt_scd_id,
    dbt_updated_at
    
from {{ ref('snp_customers') }}
