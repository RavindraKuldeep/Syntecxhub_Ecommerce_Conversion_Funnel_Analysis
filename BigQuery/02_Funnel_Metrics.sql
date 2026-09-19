-- =========================================================
-- 02_Funnel_Metrics.sql
-- Stage-wise Conversion and Drop-off
-- =========================================================

SELECT
    visitors,
    product_views,
    add_to_cart,
    purchases,

    ROUND(
        SAFE_DIVIDE(product_views, visitors) * 100,
        2
    ) AS visit_to_product_conversion,

    ROUND(
        SAFE_DIVIDE(add_to_cart, product_views) * 100,
        2
    ) AS product_to_cart_conversion,

    ROUND(
        SAFE_DIVIDE(purchases, add_to_cart) * 100,
        2
    ) AS cart_to_purchase_conversion,

    ROUND(
        SAFE_DIVIDE(purchases, visitors) * 100,
        2
    ) AS overall_conversion

FROM
`decisive-forest-506410-p4.ecommerce_funnel.funnel_data`;
