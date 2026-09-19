-- =========================================================
-- 04_Monthly_Funnel.sql
-- Monthly Funnel Data
-- =========================================================

CREATE OR REPLACE TABLE
`decisive-forest-506410-p4.ecommerce_funnel.monthly_funnel` AS

SELECT
    DATE_TRUNC(
        PARSE_DATE('%Y%m%d', event_date),
        MONTH
    ) AS month,

    COUNTIF(event_name = 'session_start') AS visitors,

    COUNTIF(event_name = 'view_item') AS product_views,

    COUNTIF(event_name = 'add_to_cart') AS add_to_cart,

    COUNTIF(event_name = 'purchase') AS purchases

FROM
`bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`

GROUP BY month

ORDER BY month;
