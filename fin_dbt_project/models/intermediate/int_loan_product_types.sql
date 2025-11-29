{{ config(
    materialized='table'
) }}

select
    loan_product_type_id,
    loan_product_type
    
from {{ ref('stg_loan_product_types') }}
