with source as (
    select * from {{ source('sana-sandbox-356306', 'sms_record') }}

),

renamed as (

    select
        subscription_id,
        rate_plan_product_id,
        network_activity_type_cd as network_activity_type_code,
        traffic_case_cd as traffic_case_code,
        called_location_cd as called_location_code,
        roaming_location_cd as roaming_location_code,
        call_rate_period_cd as call_rate_period_code,
        start_of_charge_dt,
        start_of_charge_tm,
        final_charge,
        main_balance_before,
        main_balance_after,
        network_id


    from source

)

select * from renamed
