-- =========================================================
-- 03_Bottleneck_Analysis.sql
-- Funnel Stage Drop-off Analysis
-- =========================================================

SELECT
    'Visit → Product View' AS funnel_stage,
    269792 AS start_users,
    61252 AS next_stage_users,
    208540 AS drop_off_users,
    22.70 AS conversion_rate,
    77.30 AS drop_off_rate,
    1 AS stage_order

UNION ALL

SELECT
    'Product View → Add to Cart',
    61252,
    12545,
    48707,
    20.48,
    79.52,
    2

UNION ALL

SELECT
    'Add to Cart → Purchase',
    12545,
    4419,
    8126,
    35.23,
    64.77,
    3

ORDER BY stage_order;
