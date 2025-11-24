{{ config(materialized = 'table') }}

 WITH PRODDUCTS_SUMMARY AS (
    SELECT
        CATEGORY,
        COUNT(PRODUCTID) ITEMS_AVAILABLE
    FROM
        {{ source('ECOM_RAW', 'PRODUCTS') }}
    GROUP BY
        CATEGORY
)
SELECT
    *
FROM
    PRODDUCTS_SUMMARY