with source as (

    select * from {{ ref('raw_network_activity_type') }}

),

renamed as (

    select
        network_activity_type_cd as network_activity_type_code,
        name as network_name,
        description as network_description,
        start_date,
        end_date,
        active_flag

    from source

)

select * from renamed