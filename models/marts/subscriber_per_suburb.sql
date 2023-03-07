with sub_record as (

    select sa.suburb_name as suburb_name, count(sb.subscription_id) as total_subscribers  
    from {{ref('stg_address')}} as sa, {{ref('stg_subscriber')}} as sb
    where sa.address_id = sb.address_id
    group by suburb_name

)

select * from sub_record
             
