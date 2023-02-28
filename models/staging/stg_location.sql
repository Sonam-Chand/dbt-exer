with source as (

    select * from {{ ref('raw_location') }}

),

renamed as (

    select
        location_cd as location_code,
        country,
        state,
        postcode

    from source

)

select * from renamed