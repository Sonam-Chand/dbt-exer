{{ config (
    materialized = 'incremental'
) }}

WITH base AS(

    SELECT
        *
    FROM
        {{ ref('stg_unique_sms_record') }}

{% if is_incremental() %}
WHERE
    start_of_charge_dt >= MAX(start_of_charge_dt)
FROM
    {{ this }}
{% endif %}
)
SELECT
    *
FROM
    base
