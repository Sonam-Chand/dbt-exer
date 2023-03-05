with source as (

    select * from {{ ref('raw_call_rate_period') }}

),

renamed as (

    select
        call_rate_period_cd as call_rate_period_code,
        name as call_rate_period_name,
        type as call_rate_type,
        metering_unit


    from source

)

select * from renamed