{{ config(
    materialized='table'
) }}

with cte as (
    select 
        *

    from {{ ref('stg_customers') }}
)

select
    borrower_id,
    country_of_residency,
    concat(first_name, ' ', last_name) as full_name,
    phone_number,
    email,

    dbt_valid_from,
    dbt_valid_to,
    dbt_scd_id,
    dbt_updated_at

from cte
