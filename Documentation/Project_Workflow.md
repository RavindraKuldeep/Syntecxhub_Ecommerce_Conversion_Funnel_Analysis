# 🔄 Project Workflow — E-commerce Conversion Funnel Analysis

## 1. Project Overview

This project analyzes the complete e-commerce conversion funnel to understand how users move from visiting the website to completing a purchase.

The analysis follows a structured workflow:

**BigQuery SQL → Google Colab (Python/Pandas) → Power BI → Business Insights**

---

## 2. Project Objective

The main objective is to:

* Analyze the user conversion funnel
* Measure stage-wise conversion rates
* Identify major drop-off points
* Analyze monthly conversion trends
* Compare funnel performance across channels
* Compare funnel performance across devices
* Build a business-focused Power BI dashboard
* Generate actionable business insights

---

## 3. Funnel Definition

The project uses the following four-stage funnel:

**Visit → Product View → Add to Cart → Purchase**

| Funnel Stage | Event           |
| ------------ | --------------- |
| Visit        | `session_start` |
| Product View | `view_item`     |
| Add to Cart  | `add_to_cart`   |
| Purchase     | `purchase`      |

---

## 4. Data Source

The analysis is based on e-commerce event-level data containing user interactions such as:

* Website visits
* Product views
* Add-to-cart events
* Purchases
* Traffic channels
* Device information
* Event dates

The raw event data was processed in **Google BigQuery** to create analytical tables required for the funnel analysis.

---

# 5. BigQuery & SQL Analysis

## 5.1 Funnel Data Preparation

The first step was to transform the event-level data into the four major funnel stages:

```text
Visit
   ↓
Product View
   ↓
Add to Cart
   ↓
Purchase
```

The required user/event counts were calculated using SQL.

---

## 5.2 Funnel Metrics

Stage-to-stage conversion rates were calculated using:

### Visit → Product View

```text
Product Views / Visitors × 100
```

### Product View → Add to Cart

```text
Add to Cart / Product Views × 100
```

### Add to Cart → Purchase

```text
Purchases / Add to Cart × 100
```

### Overall Conversion

```text
Purchases / Visitors × 100
```

---

# 6. Bottleneck Analysis

The funnel stages were compared to identify where the largest percentage of users were lost.

The analysis calculates:

* Starting users
* Next-stage users
* Drop-off users
* Conversion rate
* Drop-off rate

The major funnel bottleneck identified was:

**Product View → Add to Cart**

with approximately:

* **20.48% conversion**
* **79.52% drop-off**

This indicates that a large proportion of users who viewed products did not proceed to add them to the cart.

---

# 7. Monthly Funnel Analysis

Monthly funnel performance was analyzed to identify changes in user behavior over time.

The analysis includes:

* Monthly visitors
* Monthly product views
* Monthly add-to-cart actions
* Monthly purchases
* Stage-wise conversion rates
* Overall conversion rate
* Month-over-month conversion change

This helps identify:

* High-performing months
* Low-performing months
* Conversion fluctuations
* Changes in funnel efficiency over time

---

# 8. Channel-Level Analysis

The funnel was also analyzed across different acquisition channels.

The analysis compares:

* Visitors
* Product views
* Add to cart
* Purchases
* Conversion rate

This helps understand how different traffic sources perform throughout the conversion journey.

---

# 9. Device-Level Analysis

Funnel performance was also evaluated across different device types.

The analysis includes:

* Visitors
* Product views
* Add to cart
* Purchases
* Conversion rate

This helps identify potential differences in user behavior between devices.

---

# 10. Google Colab — Python & Pandas Analysis

After creating the analytical tables in BigQuery, the data was analyzed in **Google Colab** using Python and Pandas.

The Python analysis included:

* Data loading
* Data exploration
* Dataset shape and columns
* Data type inspection
* Missing-value analysis
* Descriptive statistics
* Date conversion
* Funnel conversion calculations
* Monthly trend analysis
* Month-over-month analysis
* Highest and lowest conversion month
* Funnel totals
* Business insight generation

---

# 11. Python Visualization

Python was used to create supporting visualizations for analytical validation.

The visual analysis included:

### Monthly Conversion Trend

Shows how the overall funnel conversion rate changes over time.

### Monthly Visitors vs Purchases

Compares website traffic volume with completed purchases.

These visualizations were used to validate the SQL-based analysis and identify trends before dashboard development.

---

# 12. SQL & Python Validation

The SQL and Python results were compared to ensure consistency.

The validation covered:

* Total visitors
* Product views
* Add-to-cart events
* Purchases
* Conversion rates
* Monthly metrics

This step helps reduce calculation errors and improves analytical reliability.

---

# 13. Power BI Dashboard

The final analysis was presented through a **single-page Power BI dashboard**.

The dashboard contains exactly three main analytical visuals.

## 13.1 Conversion Funnel

Displays:

**Visit → Product View → Add to Cart → Purchase**

It helps users understand the overall funnel progression.

---

## 13.2 Funnel Stage Conversion / Drop-off

Shows conversion and drop-off performance between funnel stages.

The key stages include:

* Visit → Product View
* Product View → Add to Cart
* Add to Cart → Purchase

This visual highlights the major bottleneck in the customer journey.

---

## 13.3 Monthly Visitors vs Purchases

Compares monthly website visitors with completed purchases.

This helps identify changes in traffic volume and purchasing activity over time.

---

# 14. Dashboard Design

The Power BI dashboard was designed with a business-focused layout.

The design principles include:

* Clean single-page layout
* Clear visual hierarchy
* Consistent formatting
* Minimal unnecessary visuals
* Easy-to-read KPIs
* Conversion-focused storytelling
* Business-oriented insights

The goal was to keep the dashboard simple while still communicating the most important funnel findings.

---

# 15. Business Insights

The analysis produced several important business insights.

### Insight 1 — High Visit-to-Product Drop-off

Only approximately **22.70%** of visitors progressed from Visit to Product View.

This indicates significant user loss before meaningful product engagement.

---

### Insight 2 — Major Funnel Bottleneck

The **Product View → Add to Cart** stage has approximately:

**20.48% conversion**

and

**79.52% drop-off**

This represents the largest stage-level drop-off in the funnel.

---

### Insight 3 — Cart-to-Purchase Performance

The **Add to Cart → Purchase** stage has approximately:

**35.23% conversion**

Although significant user loss still occurs, this stage converts a larger proportion of users than the earlier funnel stages.

---

# 16. Business Recommendations

Based on the funnel analysis, potential improvement areas include:

### Improve Product Engagement

* Improve product page design
* Use stronger product images
* Provide clear pricing and product information
* Improve product descriptions
* Highlight product benefits

### Improve Add-to-Cart Conversion

* Make the Add to Cart CTA more visible
* Reduce product-page friction
* Display availability and delivery information clearly
* Test different CTA placements

### Improve Purchase Completion

* Simplify checkout steps
* Reduce unnecessary form fields
* Improve payment experience
* Provide clear shipping information
* Investigate checkout abandonment

### Improve Traffic Quality

* Compare channel-level conversion rates
* Identify high-performing acquisition sources
* Optimize low-converting traffic sources

---

# 17. Project File Organization

```text
Syntecxhub_Ecommerce_Conversion_Funnel_Analysis/
│
├── BigQuery/
│   ├── 01_Funnel_Data.sql
│   ├── 02_Funnel_Metrics.sql
│   ├── 03_Bottleneck_Analysis.sql
│   ├── 04_Monthly_Funnel.sql
│   ├── 05_Monthly_Funnel_Analysis.sql
│   ├── 06_Channel_Funnel.sql
│   ├── 07_Device_Funnel.sql
│   └── 08_Funnel_KPI_Summary.sql
│
├── Python/
│   └── Ecommerce_Funnel_Analysis.py
│
├── PowerBI/
│   └── Ecommerce_Conversion_Funnel_Analysis.pbix
│
├── Documentation/
│   ├── Data_Dictionary.md
│   ├── Business_Insights.md
│   ├── Project_Workflow.md
│   └── funnel_cover.png
│
└── README.md
```

---

# 18. Technology Stack

| Technology      | Purpose                                   |
| --------------- | ----------------------------------------- |
| Google BigQuery | Data processing and SQL analysis          |
| SQL             | Funnel metrics and analytical tables      |
| Google Colab    | Python-based analysis                     |
| Python          | Data analysis and visualization           |
| Pandas          | Data manipulation                         |
| Matplotlib      | Analytical visualization                  |
| Power BI        | Interactive dashboard                     |
| GitHub          | Version control and project documentation |

---

# 19. Analytical Layers

The project follows a layered analytics approach:

```text
Raw Event Data
      ↓
BigQuery SQL
      ↓
Funnel Analytical Tables
      ↓
Python / Pandas EDA
      ↓
Validation & Trend Analysis
      ↓
Power BI Dashboard
      ↓
Business Insights
      ↓
Recommendations
```

---

# 20. Analytical Considerations

The funnel analysis should be interpreted as an event-based analytical model.

The project focuses on aggregate funnel behavior rather than individual customer-level journey reconstruction.

Conversion metrics are calculated using the available funnel-stage counts and should therefore be interpreted within the scope of the analyzed dataset.

---

# 21. Future Scope

Potential future enhancements include:

* User-level funnel analysis
* Cohort analysis
* Campaign-level performance
* Landing-page analysis
* Product-category analysis
* Customer segmentation
* Advanced conversion prediction
* A/B testing analysis
* Retention analysis
* Automated dashboard refresh

---

# 22. Final Workflow Summary

The complete project workflow is:

```text
E-commerce Event Data
        ↓
Google BigQuery
        ↓
SQL Data Preparation
        ↓
Funnel Metrics
        ↓
Bottleneck Analysis
        ↓
Monthly / Channel / Device Analysis
        ↓
Google Colab
        ↓
Python & Pandas EDA
        ↓
Validation & Visualization
        ↓
Power BI Dashboard
        ↓
Business Insights
        ↓
Recommendations
        ↓
GitHub Portfolio
```

The workflow combines **SQL analytics, Python-based exploratory analysis, Power BI visualization, and business interpretation** to create a complete end-to-end Data Analytics portfolio project.
