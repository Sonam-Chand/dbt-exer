--depends_on: {{ref('stg_unique_sms_record')}}
{
{
    config
(
        materialized='incremental'
    )
}}

with base as(
select *
from {{ref
('stg_unique_sms_record')}}
    {%if is_incremental() %}
    where start_of_charge_dt >= max
(start_of_charge_dt) from {{this}}
    {% endif %})


select * from base;



