{{ config(
    materialized='view'
) }}

select
    try_cast(CountryCode as string) as country_code,
    try_cast(CountryName as string) as country_name,

    snapshot_ingested_at
    
from {{ source('bondara_raw', 'ing_countries') }}
