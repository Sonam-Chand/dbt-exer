with source as (
    select * from {{ source('dbt_schand', 'address') }}

),

renamed as (

    select
        address_id,
        number as street_number,
        street_name,
        street_type,
        suburb as suburb_name,
        postcode,
        state,
        country


    from source

)

select * from renamed