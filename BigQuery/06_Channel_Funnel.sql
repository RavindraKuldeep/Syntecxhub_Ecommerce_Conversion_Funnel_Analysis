-- =========================================================
-- 06_Channel_Funnel.sql
-- Traffic Channel Funnel Analysis
-- =========================================================

CREATE OR REPLACE TABLE
`decisive-forest-506410-p4.ecommerce_funnel.channel_funnel` AS

SELECT
    traffic_source.source AS channel,

    COUNTIF(event_name = 'session_start') AS visitors,

    COUNTIF(event_name = 'view_item') AS product_views,

    COUNTIF(event_name = 'add_to_cart') AS add_to_cart,

    COUNTIF(event_name = 'purchase') AS purchases

FROM
`bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`

GROUP BY channel

ORDER BY visitors DESC;
