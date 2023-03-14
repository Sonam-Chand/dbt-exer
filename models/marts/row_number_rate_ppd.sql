WITH ref AS(
        SELECT
                rate_plan_product_id,
                rate_plan_name,
                rate_plan_description,
                start_date,
                end_date,
                active_flag,
                ROW_NUMBER() over (
                        PARTITION BY rate_plan_name
                        ORDER BY
                                rate_plan_product_id
                ) AS row_n
        FROM
                {{ ref('stg_rate_plan_product') }}
        ORDER BY
                1
)
SELECT
        *
FROM
        ref
