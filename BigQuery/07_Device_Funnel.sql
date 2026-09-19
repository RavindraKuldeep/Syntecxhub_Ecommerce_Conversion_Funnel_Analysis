-- =========================================================
-- 07_Device_Funnel.sql
-- Device-wise Funnel Analysis
-- =========================================================

CREATE OR REPLACE TABLE
`decisive-forest-506410-p4.ecommerce_funnel.device_funnel` AS

SELECT
    device.category AS device,

    COUNTIF(event_name = 'session_start') AS visitors,

    COUNTIF(event_name = 'view_item') AS product_views,

    COUNTIF(event_name = 'add_to_cart') AS add_to_cart,

    COUNTIF(event_name = 'purchase') AS purchases

FROM
`bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`

GROUP BY device

ORDER BY visitors DESC;
