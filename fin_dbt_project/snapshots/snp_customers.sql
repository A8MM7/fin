{% snapshot snp_customers %}

{{
  config(
    unique_key='borrower_id',
    strategy='check',
    check_cols=[
      'country_of_residency',
      'first_name',
      'last_name',
      'phone_number',
      'email'
    ],
    on_schema_change='append_new_columns'
  )
}}

select
    *
    
from {{ source('bondara_raw', 'ing_customers') }}

{% endsnapshot %}
