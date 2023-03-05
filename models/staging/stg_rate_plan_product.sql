with source as (

    select * from {{ source('sana-sandbox-356306', 'rate_plan_product') }}

),

renamed as (

    select
        rate_plan_product_id,
        rate_plan_name,
        rate_plan_description,
        start_date,
        end_date,
        active_flag
       
    from source

)

select * from renamed