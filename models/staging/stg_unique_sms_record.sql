

with
    source
    as
    (
        select *
        from {{ source
    ('sana-sandbox-356306', 'unique_sms_record') }}

),

renamed as
(

   select
    rate_plan_product_id,
    count(subscription_id) as nr_subscriber,
    start_of_charge_dt

from source
group by 
 
     rate_plan_product_id,
     start_of_charge_dt	

)

select *
from renamed