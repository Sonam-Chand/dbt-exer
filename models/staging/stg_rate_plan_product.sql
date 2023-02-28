with source as (

    select * from {{ source('dbt_schand', 'rate_plan_product') }}

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