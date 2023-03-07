{% snapshot small_sms_record_2snapshot %}


{{
    config(
      target_database='sana-sandbox-356306',
      target_schema='my_first_dbt_model',
      unique_key='subscription_id',
      strategy='timestamp',
      updated_at='start_of_charge_dt',
    )
}}

select * from {{ source('sana-sandbox-356306', 'small_sms_record') }}



{% endsnapshot %}