with source as (

    select * from {{ ref('raw_network_type') }}

),

renamed as (

    select
        network_id,
        name as network_name,
        type as network_type,
        protocol

    from source

)

select * from renamed