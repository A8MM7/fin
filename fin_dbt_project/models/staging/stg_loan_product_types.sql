{{ config(
    materialized='view'
) }}

select
    try_cast(loanPproductTypeId as string) as loan_product_type_id,
    try_cast(loanProductType as string) as loan_product_type,

    snapshot_ingested_at

from {{ source('bondara_raw', 'ing_loan_product_types') }}
