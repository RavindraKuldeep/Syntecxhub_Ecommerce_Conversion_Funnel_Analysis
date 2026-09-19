# \# 🔄 Project Workflow — E-commerce Conversion Funnel Analysis

# 

# \## 📌 Overview

# 

# This document describes the complete end-to-end workflow followed for the \*\*E-commerce Conversion Funnel Analysis\*\* project.

# 

# The project combines \*\*Google BigQuery, SQL, Google Colab, Python, Pandas, Matplotlib and Power BI\*\* to transform e-commerce event data into actionable business insights.

# 

# \---

# 

# \# 🎯 Project Objective

# 

# The primary objective is to analyze the e-commerce customer journey and identify where users drop off before completing a purchase.

# 

# The core funnel is:

# 

# \*\*Visit → Product View → Add to Cart → Purchase\*\*

# 

# The workflow focuses on:

# 

# \* Funnel stage analysis

# \* Conversion rate calculation

# \* Drop-off analysis

# \* Bottleneck identification

# \* Monthly trend analysis

# \* Channel analysis

# \* Device analysis

# \* Python-based validation

# \* Power BI visualization

# \* Business insights and recommendations

# 

# \---

# 

# \# 🏗️ End-to-End Workflow

# 

# ```text

# E-commerce Event Data

# &#x20;         ↓

# &#x20;    Google BigQuery

# &#x20;         ↓

# &#x20;     SQL Queries

# &#x20;         ↓

# &#x20;  Funnel Data Preparation

# &#x20;         ↓

# &#x20;   Funnel Metrics

# &#x20;         ↓

# &#x20;Bottleneck Analysis

# &#x20;         ↓

# &#x20;Monthly / Channel / Device Analysis

# &#x20;         ↓

# &#x20;     Google Colab

# &#x20;         ↓

# &#x20;    Python / Pandas

# &#x20;         ↓

# &#x20;Exploratory Data Analysis

# &#x20;         ↓

# &#x20;  Trend \& Conversion Analysis

# &#x20;         ↓

# &#x20;      Power BI

# &#x20;         ↓

# &#x20; Single-Page Dashboard

# &#x20;         ↓

# &#x20;Business Insights

# &#x20;         ↓

# &#x20;Recommendations

# &#x20;         ↓

# &#x20;      GitHub

# ```

# 

# \---

# 

# \# 1. 📂 Data Source

# 

# The project starts with e-commerce event-level data available through \*\*Google BigQuery\*\*.

# 

# The source data contains user interaction events generated during the e-commerce journey.

# 

# Relevant events used for the primary funnel include:

# 

# | Event           | Funnel Stage |

# | --------------- | ------------ |

# | `session\_start` | Visit        |

# | `view\_item`     | Product View |

# | `add\_to\_cart`   | Add to Cart  |

# | `purchase`      | Purchase     |

# 

# Additional events were explored during the initial data-understanding stage.

# 

# \---

# 

# \# 2. 🗃️ BigQuery Data Preparation

# 

# Google BigQuery was used as the primary data-processing environment.

# 

# The event-level data was transformed into structured analytical tables using SQL.

# 

# The preparation process included:

# 

# \* Identifying relevant events

# \* Mapping events to funnel stages

# \* Aggregating funnel-stage activity

# \* Calculating conversion rates

# \* Calculating drop-off rates

# \* Preparing monthly analysis

# \* Preparing channel analysis

# \* Preparing device analysis

# \* Creating KPI summaries

# 

# \---

# 

# \# 3. 🔄 Funnel Construction

# 

# The primary customer journey was defined as:

# 

# ```text

# Visit

# &#x20; ↓

# Product View

# &#x20; ↓

# Add to Cart

# &#x20; ↓

# Purchase

# ```

# 

# Each stage represents an important point in the customer journey.

# 

# The funnel allows the analysis to determine how many users progress from one stage to the next.

# 

# \---

# 

# \# 4. 📊 Funnel Metrics Calculation

# 

# Stage-to-stage conversion rates were calculated using SQL.

# 

# \### Visit → Product View

# 

# ```text

# Product Views ÷ Visitors × 100

# ```

# 

# \### Product View → Add to Cart

# 

# ```text

# Add to Cart ÷ Product Views × 100

# ```

# 

# \### Add to Cart → Purchase

# 

# ```text

# Purchases ÷ Add to Cart × 100

# ```

# 

# Drop-off was calculated as:

# 

# ```text

# 100 − Conversion Rate

# ```

# 

# \---

# 

# \# 5. 📉 Bottleneck Analysis

# 

# The `bottleneck\_analysis` table was created to identify the funnel transitions with significant user drop-off.

# 

# The analysis compares:

# 

# \* Starting users

# \* Next-stage users

# \* Dropped users

# \* Conversion rate

# \* Drop-off rate

# 

# The three primary transitions are:

# 

# ```text

# Visit → Product View

# 

# Product View → Add to Cart

# 

# Add to Cart → Purchase

# ```

# 

# The analysis identified \*\*Product View → Add to Cart\*\* as the largest stage-level drop-off at \*\*79.52%\*\*.

# 

# \---

# 

# \# 6. 📅 Monthly Funnel Analysis

# 

# Monthly funnel analysis was performed to understand how funnel performance changes over time.

# 

# The monthly analysis includes:

# 

# \* Monthly visitors

# \* Monthly product views

# \* Monthly add-to-cart activity

# \* Monthly purchases

# \* Monthly conversion rates

# \* Month-on-Month conversion changes

# \* Highest conversion month

# \* Lowest conversion month

# \* Visitors vs Purchases trend

# 

# This provides a time-based perspective of funnel performance.

# 

# \---

# 

# \# 7. 📢 Channel-Level Analysis

# 

# A separate `channel\_funnel` table was created to analyze funnel performance across acquisition channels.

# 

# The analysis can be used to compare:

# 

# ```text

# Channel

# &#x20;  ↓

# Visitors

# &#x20;  ↓

# Product Views

# &#x20;  ↓

# Add to Cart

# &#x20;  ↓

# Purchases

# ```

# 

# This helps identify differences in funnel behavior across traffic sources.

# 

# \---

# 

# \# 8. 📱 Device-Level Analysis

# 

# The `device\_funnel` table was created to analyze funnel performance by device category.

# 

# The analysis can compare:

# 

# \* Desktop

# \* Mobile

# \* Tablet

# \* Other available device categories

# 

# This provides additional context for investigating potential differences in user behavior and conversion performance across devices.

# 

# \---

# 

# \# 9. 🐍 Google Colab — Python/Pandas Analysis

# 

# After creating the analytical datasets in BigQuery, the data was analyzed using \*\*Python and Pandas in Google Colab\*\*.

# 

# Python was used as an independent analytical and validation layer.

# 

# \---

# 

# \## 🔬 Python EDA

# 

# The Python analysis included:

# 

# \* Dataset preview

# \* Dataset shape

# \* Column inspection

# \* Data type inspection

# \* Missing-value checks

# \* Descriptive statistics

# \* Date conversion

# \* Funnel calculations

# \* Stage conversion analysis

# \* Drop-off analysis

# \* Monthly analysis

# \* Month-on-Month analysis

# \* Highest conversion month

# \* Lowest conversion month

# \* Visitors vs Purchases analysis

# 

# \---

# 

# \# 10. 📈 Python Visualization

# 

# Matplotlib was used to visualize analytical trends.

# 

# The analysis included visualizations such as:

# 

# \* Monthly conversion trend

# \* Monthly visitors vs purchases

# 

# These visualizations helped validate and understand the funnel performance before creating the final Power BI dashboard.

# 

# \---

# 

# \# 11. 🔍 SQL \& Python Validation

# 

# Python was also used to validate the results produced during SQL analysis.

# 

# The validation process compared funnel metrics and trends to ensure consistency between the SQL-based analysis and Python-based calculations.

# 

# This provided an additional quality-check layer before dashboard development.

# 

# \---

# 

# \# 12. 📊 Power BI Dashboard

# 

# After completing SQL and Python analysis, the final results were presented in Power BI.

# 

# The project uses a \*\*single-page dashboard\*\* containing three primary visuals.

# 

# \---

# 

# \## Visual 1 — Conversion Funnel

# 

# Displays:

# 

# \*\*Visit → Product View → Add to Cart → Purchase\*\*

# 

# This provides an overall view of user progression through the funnel.

# 

# \---

# 

# \## Visual 2 — Funnel Stage Conversion / Drop-off

# 

# Displays stage-to-stage:

# 

# \* Conversion percentage

# \* Drop-off percentage

# \* Funnel-stage values

# 

# The three transitions are:

# 

# ```text

# Visit → Product View

# Product View → Add to Cart

# Add to Cart → Purchase

# ```

# 

# \---

# 

# \## Visual 3 — Monthly Visitors vs Purchases

# 

# Displays monthly:

# 

# \* Visitors

# \* Purchases

# 

# This helps compare traffic volume with completed purchases over time.

# 

# \---

# 

# \# 13. 🎨 Dashboard Design

# 

# The dashboard was intentionally designed as a concise business dashboard.

# 

# Design principles include:

# 

# \* Single-page layout

# \* Clear visual hierarchy

# \* Minimal clutter

# \* Business-focused metrics

# \* Easy-to-read values

# \* Funnel-focused storytelling

# \* Recruiter-friendly presentation

# 

# The final dashboard avoids unnecessary visuals and focuses on the most important funnel insights.

# 

# \---

# 

# \# 14. 💡 Business Insights

# 

# The analysis produced several key findings.

# 

# \### Visit → Product View

# 

# Conversion:

# 

# \*\*22.70%\*\*

# 

# Drop-off:

# 

# \*\*77.30%\*\*

# 

# \---

# 

# \### Product View → Add to Cart

# 

# Conversion:

# 

# \*\*20.48%\*\*

# 

# Drop-off:

# 

# \*\*79.52%\*\*

# 

# This represents the highest stage-level drop-off.

# 

# \---

# 

# \### Add to Cart → Purchase

# 

# Conversion:

# 

# \*\*35.23%\*\*

# 

# Drop-off:

# 

# \*\*64.77%\*\*

# 

# \---

# 

# \# 15. 🚀 Business Recommendations

# 

# Based on the analysis, the following areas can be investigated:

# 

# \## Product Discovery

# 

# \* Improve navigation

# \* Improve product categorization

# \* Optimize search

# \* Improve landing-page relevance

# 

# \## Product Pages

# 

# \* Improve product images

# \* Improve descriptions

# \* Improve pricing visibility

# \* Highlight product benefits

# \* Improve Add to Cart visibility

# 

# \## Checkout

# 

# \* Simplify checkout

# \* Reduce unnecessary steps

# \* Improve payment experience

# \* Display delivery costs clearly

# \* Investigate cart abandonment

# 

# \## Monthly Monitoring

# 

# \* Monitor conversion trends

# \* Investigate unusual changes

# \* Compare traffic and purchases

# \* Monitor channel and device performance

# 

# \---

# 

# \# 16. 📁 Project File Organization

# 

# The final project is organized into the following structure:

# 

# ```text

# Syntecxhub\_Ecommerce\_Conversion\_Funnel\_Analysis/

# │

# ├── BigQuery/

# │   ├── 01\_Funnel\_Data.sql

# │   ├── 02\_Funnel\_Metrics.sql

# │   ├── 03\_Bottleneck\_Analysis.sql

# │   ├── 04\_Monthly\_Funnel.sql

# │   ├── 05\_Monthly\_Funnel\_Analysis.sql

# │   ├── 06\_Channel\_Funnel.sql

# │   ├── 07\_Device\_Funnel.sql

# │   └── 08\_Funnel\_KPI\_Summary.sql

# │

# ├── Python/

# │   └── Ecommerce\_Funnel\_Analysis.py

# │

# ├── PowerBI/

# │   └── Ecommerce\_Conversion\_Funnel\_Analysis.pbix

# │

# ├── Documentation/

# │   ├── Data\_Dictionary.md

# │   ├── Business\_Insights.md

# │   ├── Project\_Workflow.md

# │   └── funnel\_cover.png

# │

# └── README.md

# ```

# 

# \---

# 

# \# 17. 🧰 Technology Stack

# 

# | Technology      | Role                              |

# | --------------- | --------------------------------- |

# | Google BigQuery | Data processing                   |

# | SQL             | Data transformation and analysis  |

# | Google Colab    | Python analysis environment       |

# | Python          | Exploratory analysis              |

# | Pandas          | Data manipulation                 |

# | Matplotlib      | Data visualization                |

# | Power BI        | Dashboard development             |

# | GitHub          | Version control and documentation |

# 

# \---

# 

# \# 18. 🔬 Analytical Layers

# 

# The project can be viewed as five analytical layers:

# 

# \### Layer 1 — Data

# 

# Raw e-commerce event data.

# 

# \### Layer 2 — SQL

# 

# BigQuery-based transformation and funnel calculations.

# 

# \### Layer 3 — Python

# 

# Exploratory analysis and validation.

# 

# \### Layer 4 — Visualization

# 

# Power BI dashboard and analytical charts.

# 

# \### Layer 5 — Business Intelligence

# 

# Insights, bottlenecks and recommendations.

# 

# \---

# 

# \# 19. ⚠️ Analytical Considerations

# 

# The project identifies \*\*funnel-level patterns and drop-offs\*\*.

# 

# A high drop-off rate identifies an area that requires investigation but does not by itself establish the exact root cause.

# 

# Further analysis using user-level, session-level, product-level, traffic-level, or experimental data may be required to establish causality.

# 

# \---

# 

# \# 20. 🔮 Future Scope

# 

# Potential future extensions include:

# 

# \* User-level funnel analysis

# \* Session-level funnel analysis

# \* Cohort analysis

# \* Product-level conversion analysis

# \* Revenue funnel analysis

# \* Cart abandonment analysis

# \* Customer segmentation

# \* Campaign analysis

# \* A/B testing

# \* Customer lifetime value analysis

# \* Conversion prediction

# 

# These were kept outside the current project scope to maintain a focused funnel-analysis solution.

# 

# \---

# 

# \# 21. 🏁 Final Workflow Summary

# 

# The completed project follows this end-to-end process:

# 

# ```text

# E-commerce Event Data

# &#x20;       ↓

# Google BigQuery

# &#x20;       ↓

# SQL Data Preparation

# &#x20;       ↓

# Funnel Metrics

# &#x20;       ↓

# Bottleneck Analysis

# &#x20;       ↓

# Monthly / Channel / Device Analysis

# &#x20;       ↓

# Google Colab

# &#x20;       ↓

# Python / Pandas EDA

# &#x20;       ↓

# Matplotlib Visualization

# &#x20;       ↓

# SQL Result Validation

# &#x20;       ↓

# Power BI Dashboard

# &#x20;       ↓

# Business Insights

# &#x20;       ↓

# Business Recommendations

# &#x20;       ↓

# GitHub Documentation

# ```

# 

# \---

# 

# \# 📌 Final Outcome

# 

# The project demonstrates an end-to-end approach to solving an e-commerce conversion problem using modern data analytics tools.

# 

# It combines:

# 

# \*\*BigQuery + SQL + Python + Pandas + Matplotlib + Power BI\*\*

# 

# to transform event-level data into:

# 

# \*\*Funnel Metrics → Bottleneck Identification → Business Insights → Actionable Recommendations\*\*



