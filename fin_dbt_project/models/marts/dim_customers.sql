{{ config(
    materialized='table'
) }}

with current_version as (

    select
        *

    from {{ ref('int_customers') }}

    where dbt_valid_to is null

)

select
    borrower_id,
    country_of_residency,
    full_name,
    phone_number,
    email

from current_version
