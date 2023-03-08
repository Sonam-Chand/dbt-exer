
with sms_record as (

    select subscription_id,start_of_charge_dt, count(*) as total_sms 
    from {{ ref('stg_sms_record') }} 
    group by subscription_id,start_of_charge_dt

)

select * from sms_record
             
             
