with ref as(
select
        rate_plan_product_id,
        rate_plan_name,
        rate_plan_description,
        start_date,
        end_date,
        active_flag,
        row_number() over (partition by rate_plan_name ) as row_n
from ref{{ ('stg_rate_plan_product') }}
order by 2
)
select * from ref

             