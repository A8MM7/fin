{% snapshot snp_loan_applications %}

{{
  config(
    unique_key='application_id',
    strategy='check',
    check_cols=[
      'applicant_id',
      'country_code',
      'loan_product_type_id',
      'requested_amount',
      'loan_issued_at',
      'issued_amount'
    ],
    on_schema_change='append_new_columns'
  )
}}

select
    *

from {{ source('bondara_raw', 'ing_loan_applications') }}

{% endsnapshot %}