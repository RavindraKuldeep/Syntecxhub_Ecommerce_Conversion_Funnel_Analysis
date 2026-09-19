-- =========================================================
-- 08_Funnel_KPI_Summary.sql
-- Overall Funnel KPI Summary
-- =========================================================

CREATE OR REPLACE TABLE
`decisive-forest-506410-p4.ecommerce_funnel.funnel_kpi_summary` AS

SELECT

    269792 AS visitors,

    61252 AS product_views,

    12545 AS add_to_cart,

    4419 AS purchases,

    ROUND(
        SAFE_DIVIDE(61252, 269792) * 100,
        2
    ) AS visit_to_product_conversion,

    ROUND(
        SAFE_DIVIDE(12545, 61252) * 100,
        2
    ) AS product_to_cart_conversion,

    ROUND(
        SAFE_DIVIDE(4419, 12545) * 100,
        2
    ) AS cart_to_purchase_conversion,

    ROUND(
        SAFE_DIVIDE(4419, 269792) * 100,
        2
    ) AS overall_conversion;
