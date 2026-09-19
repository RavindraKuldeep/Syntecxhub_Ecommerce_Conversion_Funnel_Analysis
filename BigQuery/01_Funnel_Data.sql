-- =========================================================
-- 01_Funnel_Data.sql
-- E-commerce Conversion Funnel
-- Visit → Product View → Add to Cart → Purchase
-- =========================================================

CREATE OR REPLACE TABLE
`decisive-forest-506410-p4.ecommerce_funnel.funnel_data` AS

SELECT
    COUNTIF(event_name = 'session_start') AS visitors,
    COUNTIF(event_name = 'view_item') AS product_views,
    COUNTIF(event_name = 'add_to_cart') AS add_to_cart,
    COUNTIF(event_name = 'purchase') AS purchases

FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;
