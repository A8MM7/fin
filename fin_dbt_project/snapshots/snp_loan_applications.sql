{% snapshot loanapplications_snapshot %}

{{
  config(
    unique_key='application_id',
    strategy='check',
    check_cols='all',
    on_schema_change='append_new_columns'
  )
}}

select *
from {{ source('bondara_raw', 'ing_loan_applications') }}

{% endsnapshot %}