# \# 📘 Data Dictionary — E-commerce Conversion Funnel Analysis

# 

# \## 📌 Overview

# 

# This document defines the key fields, funnel stages, calculated metrics, and analytical dimensions used in the \*\*E-commerce Conversion Funnel Analysis\*\* project.

# 

# The analysis focuses on the customer journey:

# 

# \*\*Visit → Product View → Add to Cart → Purchase\*\*

# 

# The data was processed using \*\*Google BigQuery and SQL\*\*, analyzed using \*\*Python/Pandas in Google Colab\*\*, and visualized using \*\*Power BI\*\*.

# 

# \---

# 

# \# 🔄 Funnel Stages

# 

# | Field / Stage   | Description                                    | Business Meaning                  |

# | --------------- | ---------------------------------------------- | --------------------------------- |

# | `visitors`      | Number of users entering the funnel            | Measures website traffic          |

# | `product\_views` | Number of users progressing to product viewing | Measures product-level engagement |

# | `add\_to\_cart`   | Number of users adding products to cart        | Indicates purchase intent         |

# | `purchases`     | Number of users completing a purchase          | Measures completed conversions    |

# 

# \---

# 

# \# 📊 Funnel Metrics

# 

# | Metric                        | Description                                            | Calculation                       |

# | ----------------------------- | ------------------------------------------------------ | --------------------------------- |

# | `visit\_to\_product\_conversion` | Percentage of visitors who progress to product view    | Product Views ÷ Visitors × 100    |

# | `product\_to\_cart\_conversion`  | Percentage of product viewers who add products to cart | Add to Cart ÷ Product Views × 100 |

# | `cart\_to\_purchase\_conversion` | Percentage of cart users who complete a purchase       | Purchases ÷ Add to Cart × 100     |

# | `visit\_to\_product\_dropoff`    | Percentage of visitors lost before product view        | 100 − Visit-to-Product Conversion |

# | `product\_to\_cart\_dropoff`     | Percentage of product viewers who do not add to cart   | 100 − Product-to-Cart Conversion  |

# | `cart\_to\_purchase\_dropoff`    | Percentage of cart users who do not purchase           | 100 − Cart-to-Purchase Conversion |

# 

# \---

# 

# \# 📉 Bottleneck Analysis Fields

# 

# The `bottleneck\_analysis` table is used to identify the funnel stage with the highest user drop-off.

# 

# | Field              | Description                              |

# | ------------------ | ---------------------------------------- |

# | `stage`            | Funnel transition being analyzed         |

# | `start\_users`      | Number of users entering the stage       |

# | `next\_stage\_users` | Number of users reaching the next stage  |

# | `dropoff\_users`    | Number of users lost between stages      |

# | `conversion\_rate`  | Percentage progressing to the next stage |

# | `dropoff\_rate`     | Percentage lost between stages           |

# 

# \### Funnel Transitions

# 

# ```text

# Visit → Product View

# Product View → Add to Cart

# Add to Cart → Purchase

# ```

# 

# \---

# 

# \# 📅 Monthly Analysis Fields

# 

# The `monthly\_funnel` and `monthly\_funnel\_analysis` tables are used to analyze funnel performance over time.

# 

# | Field                         | Description                                     |

# | ----------------------------- | ----------------------------------------------- |

# | `month`                       | Month associated with the funnel activity       |

# | `visitors`                    | Monthly visitors                                |

# | `product\_views`               | Monthly product views                           |

# | `add\_to\_cart`                 | Monthly add-to-cart actions                     |

# | `purchases`                   | Monthly purchases                               |

# | `visit\_to\_product\_conversion` | Monthly Visit → Product View conversion         |

# | `product\_to\_cart\_conversion`  | Monthly Product View → Add to Cart conversion   |

# | `cart\_to\_purchase\_conversion` | Monthly Add to Cart → Purchase conversion       |

# | `overall\_conversion`          | Overall monthly funnel conversion metric        |

# | `mom\_conversion\_change`       | Month-on-Month change in conversion performance |

# 

# \---

# 

# \# 📈 Monthly Analytical Metrics

# 

# \## Month-on-Month Conversion Change

# 

# Month-on-Month analysis measures how the conversion rate changes compared with the previous month.

# 

# It helps identify:

# 

# \* Positive conversion movements

# \* Negative conversion movements

# \* Unusual monthly changes

# \* Periods requiring further investigation

# 

# \---

# 

# \# 📢 Channel Analysis

# 

# The `channel\_funnel` table supports funnel analysis across acquisition channels.

# 

# | Dimension         | Description                                   |

# | ----------------- | --------------------------------------------- |

# | `channel`         | Acquisition or traffic channel                |

# | `visitors`        | Visitors attributed to the channel            |

# | `product\_views`   | Product viewers from the channel              |

# | `add\_to\_cart`     | Cart additions from the channel               |

# | `purchases`       | Purchases from the channel                    |

# | `conversion\_rate` | Funnel conversion performance for the channel |

# 

# \### Business Use

# 

# Channel-level analysis can help identify differences between:

# 

# \*\*Traffic Volume → Product Engagement → Cart Activity → Purchases\*\*

# 

# \---

# 

# \# 📱 Device Analysis

# 

# The `device\_funnel` table supports funnel analysis by device category.

# 

# | Dimension         | Description                                  |

# | ----------------- | -------------------------------------------- |

# | `device`          | Device category used by the visitor          |

# | `visitors`        | Visitors using the device                    |

# | `product\_views`   | Product views from the device                |

# | `add\_to\_cart`     | Cart additions from the device               |

# | `purchases`       | Purchases from the device                    |

# | `conversion\_rate` | Funnel conversion performance for the device |

# 

# Typical device categories may include:

# 

# \* Desktop

# \* Mobile

# \* Tablet

# \* Other available categories

# 

# \---

# 

# \# 📊 KPI Summary

# 

# The `funnel\_kpi\_summary` table provides a consolidated view of the main funnel KPIs.

# 

# | KPI                           | Description                         |

# | ----------------------------- | ----------------------------------- |

# | `total\_visitors`              | Total users entering the funnel     |

# | `total\_product\_views`         | Total product-view users            |

# | `total\_add\_to\_cart`           | Total users adding products to cart |

# | `total\_purchases`             | Total users completing purchases    |

# | `overall\_conversion\_rate`     | Overall funnel conversion metric    |

# | `visit\_to\_product\_conversion` | Visit-to-product conversion         |

# | `product\_to\_cart\_conversion`  | Product-to-cart conversion          |

# | `cart\_to\_purchase\_conversion` | Cart-to-purchase conversion         |

# 

# \---

# 

# \# 🗂️ Source Event Mapping

# 

# The funnel stages are derived from relevant e-commerce events.

# 

# | Funnel Stage     | Event           |

# | ---------------- | --------------- |

# | \*\*Visit\*\*        | `session\_start` |

# | \*\*Product View\*\* | `view\_item`     |

# | \*\*Add to Cart\*\*  | `add\_to\_cart`   |

# | \*\*Purchase\*\*     | `purchase`      |

# 

# Additional events were explored during the initial data-understanding phase but were not included as primary stages in the final four-stage funnel.

# 

# \---

# 

# \# 🧮 Core Calculations

# 

# \## Visit → Product View

# 

# ```text

# Product Views ÷ Visitors × 100

# ```

# 

# \## Product View → Add to Cart

# 

# ```text

# Add to Cart ÷ Product Views × 100

# ```

# 

# \## Add to Cart → Purchase

# 

# ```text

# Purchases ÷ Add to Cart × 100

# ```

# 

# \## Stage Drop-off

# 

# ```text

# 100 − Stage Conversion Rate

# ```

# 

# \## User Drop-off

# 

# ```text

# Start Stage Users − Next Stage Users

# ```

# 

# \---

# 

# \# 📌 Example Funnel Metrics

# 

# The analyzed funnel produced the following stage-level metrics:

# 

# | Funnel Stage               | Conversion |   Drop-off |

# | -------------------------- | ---------: | ---------: |

# | Visit → Product View       | \*\*22.70%\*\* | \*\*77.30%\*\* |

# | Product View → Add to Cart | \*\*20.48%\*\* | \*\*79.52%\*\* |

# | Add to Cart → Purchase     | \*\*35.23%\*\* | \*\*64.77%\*\* |

# 

# \---

# 

# \# ⚠️ Data Interpretation Notes

# 

# \## Stage-Level Conversion

# 

# The conversion rates in this project represent \*\*stage-to-stage funnel conversion\*\*.

# 

# For example:

# 

# ```text

# Visit → Product View

# ```

# 

# measures the proportion progressing from the Visit stage to the Product View stage.

# 

# \---

# 

# \## Drop-off Interpretation

# 

# A high drop-off rate identifies a stage where many users do not progress to the next funnel stage.

# 

# However, a drop-off percentage alone does not establish the exact cause of user abandonment.

# 

# Additional user, session, product, traffic, or experiment-level analysis may be required to identify root causes.

# 

# \---

# 

# \# 🔬 Analytical Dimensions

# 

# The project analyzes funnel performance across multiple dimensions:

# 

# \### Funnel Stage

# 

# ```text

# Visit

# Product View

# Add to Cart

# Purchase

# ```

# 

# \### Time

# 

# ```text

# Monthly

# Month-on-Month

# ```

# 

# \### Acquisition

# 

# ```text

# Channel

# ```

# 

# \### Technology

# 

# ```text

# Device

# ```

# 

# \---

# 

# \# 🛠️ Data Processing Tools

# 

# | Tool                | Role                                |

# | ------------------- | ----------------------------------- |

# | \*\*Google BigQuery\*\* | Data processing and SQL analysis    |

# | \*\*SQL\*\*             | Funnel calculations and aggregation |

# | \*\*Google Colab\*\*    | Python analysis environment         |

# | \*\*Python\*\*          | Exploratory analysis                |

# | \*\*Pandas\*\*          | Data manipulation                   |

# | \*\*Matplotlib\*\*      | Analytical visualization            |

# | \*\*Power BI\*\*        | Dashboard visualization             |

# 

# \---

# 

# \# 📁 Related Project Tables

# 

# The data dictionary covers the following analytical tables:

# 

# ```text

# funnel\_data

# funnel\_metrics

# bottleneck\_analysis

# monthly\_funnel

# monthly\_funnel\_analysis

# channel\_funnel

# device\_funnel

# funnel\_kpi\_summary

# ```

# 

# \---

# 

# \# 📌 Summary

# 

# This data dictionary provides a reference for the main funnel stages, calculated metrics, dimensions, and analytical fields used throughout the project.

# 

# The standardized definitions help maintain consistency across:

# 

# \*\*BigQuery SQL → Python/Pandas → Power BI → Business Insights\*\*

# 

# The primary business journey analyzed is:

# 

# \*\*Visit → Product View → Add to Cart → Purchase\*\*



