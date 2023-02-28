with source as (

    select * from {{ ref('raw_mobile_data_activity') }}

),

renamed as (

    select
        subscription_id,
        rate_plan_product_id,
        start_dt as start_date,
        start_tm as start_time,
        duration,
        uplink_volume,
        downlink_volume,
        charging_id_o

    from source

)

select * from renamed