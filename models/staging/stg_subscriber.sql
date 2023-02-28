with source as (

    select * from {{ ref('raw_subscriber') }}

),

renamed as (

    select
        subscription_id,
        first_name,
        last_name,
        salutation,
        age,
        gender,
        mobile,
        email as email_id,
        address_id
    from source

)

select * from renamed