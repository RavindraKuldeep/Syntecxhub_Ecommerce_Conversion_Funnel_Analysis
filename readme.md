<p align="center">
  <img src="Documentation/funnel_cover.png" alt="E-commerce Conversion Funnel Analysis" width="100%">
</p>

# 🛒 E-commerce Conversion Funnel Analysis

An end-to-end **E-commerce Conversion Funnel Analysis** project built to understand user behavior across the purchase journey, identify major drop-off points, measure conversion performance, and derive actionable business insights.

The project follows a complete analytics workflow:

**BigQuery SQL → Google Colab → Python/Pandas EDA → Power BI Dashboard → Business Insights & Recommendations**

---

## 📌 Project Overview

E-commerce businesses receive a large number of visitors, but only a portion of them progress through the complete purchase journey.

This project analyzes the conversion funnel:

**Visit → Product View → Add to Cart → Purchase**

The analysis focuses on:

* Identifying where users drop off
* Measuring stage-to-stage conversion rates
* Identifying major funnel bottlenecks
* Analyzing monthly conversion trends
* Validating SQL results using Python/Pandas
* Building a concise Power BI dashboard
* Generating actionable business recommendations

---

## 🎯 Business Objectives

The main objectives of this project are to:

* Analyze the complete e-commerce conversion funnel
* Measure user drop-off at each funnel stage
* Calculate stage-to-stage conversion rates
* Identify major bottlenecks in the customer journey
* Analyze monthly funnel performance
* Analyze month-on-month conversion changes
* Validate SQL-based results using Python
* Build a business-focused Power BI dashboard
* Generate actionable business recommendations

---

## 🔄 Conversion Funnel

The analysis focuses on four key stages:

**Visit → Product View → Add to Cart → Purchase**

| Funnel Stage     | Description                             |
| ---------------- | --------------------------------------- |
| **Visit**        | Users who visited the website           |
| **Product View** | Users who viewed a product              |
| **Add to Cart**  | Users who added a product to their cart |
| **Purchase**     | Users who completed a purchase          |

---

## 📂 Data Source

The project uses **e-commerce event-level data available through Google BigQuery**.

The source data contains user interaction events generated during the e-commerce customer journey.

Relevant events used to construct the funnel include:

* `session_start`
* `view_item`
* `add_to_cart`
* `purchase`

Additional event-level activity was also explored during the initial data understanding phase.

The raw event data was transformed into funnel-level analytical tables using **Google BigQuery and SQL**.

---

## 🗃️ Data Preparation

The data preparation process was performed in BigQuery.

The general process was:

```text
Raw Event Data
      ↓
Event Identification
      ↓
Funnel Stage Mapping
      ↓
Stage Aggregation
      ↓
Conversion Calculation
      ↓
Drop-off Analysis
      ↓
Monthly / Channel / Device Analysis
```

The four main funnel stages were mapped from the relevant e-commerce events.

---

## 🛠️ Tools & Technologies

| Tool / Technology   | Purpose                                          |
| ------------------- | ------------------------------------------------ |
| **Google BigQuery** | Data querying, transformation and aggregation    |
| **SQL**             | Funnel calculations and business analysis        |
| **Google Colab**    | Python-based exploratory analysis                |
| **Python**          | Data analysis and validation                     |
| **Pandas**          | Data manipulation and analytical calculations    |
| **Matplotlib**      | Data visualization                               |
| **Power BI**        | Interactive dashboard and business visualization |
| **GitHub**          | Version control and project documentation        |
| **Markdown**        | Project documentation                            |

---

# 📊 BigQuery & SQL Analysis

Google BigQuery was used as the primary data-processing and SQL analysis environment.

The event-level data was transformed into structured funnel datasets suitable for analytical and visualization purposes.

## 🔎 Key SQL Analyses

The SQL analysis includes:

* Funnel stage aggregation
* Stage-to-stage conversion rates
* User drop-off analysis
* Bottleneck identification
* Monthly funnel analysis
* Month-on-Month conversion analysis
* Channel-level funnel analysis
* Device-level funnel analysis
* Overall KPI summary

---

## 📋 BigQuery Analysis Tables

The project contains the following analytical tables:

| Table                     | Purpose                                      |
| ------------------------- | -------------------------------------------- |
| `funnel_data`             | Core funnel-stage data                       |
| `funnel_metrics`          | Funnel conversion metrics                    |
| `bottleneck_analysis`     | Stage-level drop-off and bottleneck analysis |
| `monthly_funnel`          | Monthly funnel performance                   |
| `monthly_funnel_analysis` | Monthly conversion and trend analysis        |
| `channel_funnel`          | Funnel performance by channel                |
| `device_funnel`           | Funnel performance by device                 |
| `funnel_kpi_summary`      | Overall funnel KPI summary                   |

---

## 📁 SQL Scripts

The BigQuery SQL scripts are organized in sequence:

```text
BigQuery/
├── 01_Funnel_Data.sql
├── 02_Funnel_Metrics.sql
├── 03_Bottleneck_Analysis.sql
├── 04_Monthly_Funnel.sql
├── 05_Monthly_Funnel_Analysis.sql
├── 06_Channel_Funnel.sql
├── 07_Device_Funnel.sql
└── 08_Funnel_KPI_Summary.sql
```

This structure keeps the SQL workflow modular and easy to understand.

---

# 🐍 Python / Pandas EDA

After the SQL-based analysis, the funnel data was analyzed in **Google Colab using Python and Pandas**.

Python was used to independently explore and validate the analytical results before building the final Power BI dashboard.

## 🔬 Exploratory Data Analysis

The Python analysis included:

* Dataset preview
* Dataset shape
* Column inspection
* Data type inspection
* Missing-value checks
* Descriptive statistics
* Date conversion
* Overall funnel conversion
* Stage-wise conversion analysis
* Stage-wise drop-off analysis
* Monthly conversion analysis
* Month-on-Month conversion changes
* Highest conversion month identification
* Lowest conversion month identification
* Total visitors analysis
* Total product views analysis
* Total add-to-cart analysis
* Total purchases analysis
* Monthly trend visualization
* Visitors vs Purchases analysis
* Final business insight summary

---

## 📈 Python Analysis Approach

The Python workflow can be summarized as:

```text
BigQuery Analytical Data
          ↓
     Google Colab
          ↓
      Pandas EDA
          ↓
 Data Quality Checks
          ↓
 Funnel Calculations
          ↓
 Monthly Trend Analysis
          ↓
 Visualization
          ↓
 Business Insights
```

Python was mainly used as an analytical validation layer between BigQuery and Power BI.

---

# 📊 Power BI Dashboard

The final Power BI dashboard is designed as a **single-page business dashboard**.

The dashboard intentionally contains **three main visuals** to keep the analysis focused and recruiter-friendly.

## 1. 🔻 Conversion Funnel

Shows the progression through the complete customer journey:

**Visit → Product View → Add to Cart → Purchase**

This visual provides a quick understanding of how users move through each stage of the funnel.

---

## 2. 📉 Funnel Stage Conversion / Drop-off

Shows the conversion and drop-off between consecutive funnel stages.

The analysis covers:

* Visit → Product View
* Product View → Add to Cart
* Add to Cart → Purchase

Both percentage and value-based information are displayed to provide business context.

---

## 3. 📅 Monthly Visitors vs Purchases

Shows the relationship between:

* Monthly Visitors
* Monthly Purchases

This helps compare website traffic volume with actual completed purchases over time.

---

## 🎨 Dashboard Design Approach

The Power BI dashboard was designed with the following principles:

* Single-page layout
* Clear visual hierarchy
* Minimal visual clutter
* Business-focused KPIs
* Easy-to-read conversion metrics
* Consistent funnel structure
* Recruiter-friendly presentation
* Focus on actionable insights

The dashboard avoids unnecessary visuals and focuses on the three most relevant views of the funnel.

---

# 💡 Business Insights

## 1. High Drop-off from Visit to Product View

The **Visit → Product View** transition has a:

* **22.70% conversion rate**
* **77.30% drop-off rate**

This means a large proportion of visitors do not progress to product-level engagement.

This area can be investigated further to understand whether traffic quality, landing-page relevance, navigation, or product discovery is affecting user progression.

---

## 2. Product View to Add-to-Cart is a Major Bottleneck

The **Product View → Add to Cart** stage has:

* **20.48% conversion rate**
* **79.52% drop-off rate**

This is the **largest stage-level drop-off** identified in the funnel analysis.

The result suggests that product-page engagement and purchase intent deserve deeper investigation.

---

## 3. Add-to-Cart to Purchase Conversion

The **Add to Cart → Purchase** stage has:

* **35.23% conversion rate**
* **64.77% drop-off rate**

Although this stage has a higher conversion rate than the earlier transitions, a substantial proportion of users still do not complete their purchases.

This indicates an opportunity to investigate checkout, payment, pricing, delivery information, and cart abandonment behavior.

---

## 4. Early Funnel Stages Require Attention

The analysis indicates that a large proportion of users are lost before reaching the purchase stage.

The major losses occur around:

**Visit → Product View**

and

**Product View → Add to Cart**

Therefore, improving early-stage engagement and product interaction is an important area for further investigation.

---

# 📌 Key Funnel Metrics

| Funnel Transition          | Conversion Rate | Drop-off Rate |
| -------------------------- | --------------: | ------------: |
| Visit → Product View       |      **22.70%** |    **77.30%** |
| Product View → Add to Cart |      **20.48%** |    **79.52%** |
| Add to Cart → Purchase     |      **35.23%** |    **64.77%** |

---

# 📊 Funnel Performance Summary

| Metric                                |      Value |
| ------------------------------------- | ---------: |
| Visit → Product View Conversion       | **22.70%** |
| Product View → Add to Cart Conversion | **20.48%** |
| Add to Cart → Purchase Conversion     | **35.23%** |
| Visit → Product View Drop-off         | **77.30%** |
| Product View → Add to Cart Drop-off   | **79.52%** |
| Add to Cart → Purchase Drop-off       | **64.77%** |

---

# 🚀 Business Recommendations

The following areas can be investigated based on the funnel findings.

## 1. Improve Product Discovery

Potential areas for investigation:

* Improve website navigation
* Improve product categorization
* Optimize internal search
* Improve landing-page relevance
* Analyze traffic sources
* Improve product discovery journeys

---

## 2. Improve Product Page Engagement

Potential actions include:

* Improve product images
* Improve product descriptions
* Make pricing information clearer
* Highlight product benefits
* Improve visibility of the Add to Cart button
* Analyze product-page engagement behavior

---

## 3. Reduce Cart-to-Purchase Drop-off

Potential areas for investigation include:

* Simplifying checkout
* Reducing unnecessary checkout steps
* Providing clear delivery information
* Making total pricing transparent
* Investigating payment failures
* Analyzing cart abandonment behavior

---

## 4. Monitor Monthly Funnel Performance

Monthly funnel performance should be monitored to identify:

* Changes in customer behavior
* Conversion fluctuations
* Traffic-quality changes
* Unusual performance periods
* Potential campaign or seasonal effects

---

# 📅 Monthly Analysis

The monthly analysis was performed to understand how funnel performance changes over time.

The analysis includes:

* Monthly visitors
* Monthly product views
* Monthly add-to-cart actions
* Monthly purchases
* Monthly conversion rate
* Month-on-Month conversion change
* Highest conversion month
* Lowest conversion month
* Visitors vs Purchases trend

This provides a time-based view of funnel performance in addition to the overall funnel analysis.

---

# 🔎 Additional Analysis

To make the project more comprehensive, supporting analyses were also created.

## Channel-Level Analysis

The `channel_funnel` table provides funnel metrics by acquisition channel.

This can help investigate:

* Which channels generate visitors
* Which channels generate product engagement
* Which channels contribute to cart activity
* Which channels generate purchases

---

## Device-Level Analysis

The `device_funnel` table provides funnel performance by device.

This can help investigate differences in user behavior across:

* Desktop
* Mobile
* Tablet
* Other available device categories

Device-level analysis can be useful for identifying potential usability or conversion differences across platforms.

---

# 🧠 Analytical Questions Answered

This project was designed to answer key business questions such as:

1. How many users enter each funnel stage?
2. Where do users drop off the most?
3. What is the conversion rate between each stage?
4. Which funnel stage represents the major bottleneck?
5. How does funnel performance change month by month?
6. How does visitor volume compare with purchase volume?
7. How does funnel performance vary across channels?
8. How does funnel performance vary across devices?
9. Which areas of the customer journey require further investigation?
10. What business actions could potentially improve conversion?

---

# 🔬 Analytical Workflow

The complete project workflow is:

```text
Raw E-commerce Event Data
          ↓
      Google BigQuery
          ↓
       SQL Queries
          ↓
   Funnel Data Preparation
          ↓
   Funnel Metrics & Analysis
          ↓
      Google Colab
          ↓
     Python / Pandas
          ↓
   Exploratory Data Analysis
          ↓
     Trend Analysis
          ↓
      Power BI
          ↓
   Single-Page Dashboard
          ↓
    Business Insights
          ↓
    Recommendations
          ↓
     GitHub Portfolio
```

---

# 📁 Project Structure

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

# 📚 Documentation

Additional project documentation is available in the `Documentation` folder.

## Data Dictionary

`Data_Dictionary.md`

Contains descriptions of the major fields and analytical metrics used in the project.

## Business Insights

`Business_Insights.md`

Contains detailed business findings and recommendations derived from the analysis.

## Project Workflow

`Project_Workflow.md`

Documents the end-to-end technical workflow used to complete the project.

## Project Cover

`funnel_cover.png`

Professional project banner used for the GitHub README.

---

# 🗂️ BigQuery Project Information

**Google Cloud Project:**

```text
decisive-forest-506410-p4
```

**Dataset:**

```text
ecommerce_funnel
```

The analytical tables created for this project are stored within the `ecommerce_funnel` dataset.

---

# 📊 Key Skills Demonstrated

This project demonstrates practical skills in:

### SQL & BigQuery

* SQL querying
* Aggregation
* Conditional logic
* Funnel analysis
* Conversion calculations
* Drop-off calculations
* Monthly analysis
* Channel analysis
* Device analysis
* Analytical table creation

### Python & Pandas

* Exploratory Data Analysis
* Data validation
* Data transformation
* Aggregation
* GroupBy analysis
* Date/time analysis
* Conversion calculations
* Trend analysis
* Visualization

### Power BI

* Data visualization
* Dashboard design
* Funnel visualization
* KPI presentation
* Conversion analysis
* Business storytelling

### Business Analytics

* Funnel analysis
* Bottleneck identification
* Customer journey analysis
* Conversion optimization analysis
* Business recommendations
* Data-driven decision support

---

# 🎓 Project Context

This project was developed as part of the **Syntecxhub Data Analysis Internship** to demonstrate practical data analytics skills using real-world style e-commerce event data.

The project goes beyond basic visualization by combining:

**SQL + Python + Pandas + Power BI + Business Analysis**

---

# ⚠️ Important Analytical Note

The conversion percentages represent **stage-to-stage funnel conversion rates** calculated from the analyzed funnel-stage values.

For example:

```text
Visit → Product View
Product View → Add to Cart
Add to Cart → Purchase
```

Therefore, these percentages should be interpreted as **funnel-stage conversion metrics**, not as a complete customer-level attribution or cohort conversion model.

Further customer-level or session-level analysis could be performed if unique user/session identifiers and appropriate event sequencing are available.

---

# 🔮 Future Scope

The project can be extended with additional analysis such as:

* Cohort analysis
* User-level funnel analysis
* Session-level funnel analysis
* Marketing campaign analysis
* Revenue funnel analysis
* Customer segmentation
* Cart abandonment analysis
* Product-level conversion analysis
* Landing-page performance analysis
* A/B testing analysis
* Customer lifetime value analysis
* Advanced conversion prediction

These extensions were kept outside the current scope to maintain a focused and business-oriented funnel analysis.

---

# 🏆 Project Highlights

### End-to-End Analytics Project

```text
BigQuery
   ↓
SQL
   ↓
Python / Pandas
   ↓
Power BI
   ↓
Business Insights
```

### Key Analytical Focus

* Funnel conversion
* User drop-off
* Bottleneck identification
* Monthly performance
* Channel analysis
* Device analysis
* Business recommendations

### Dashboard Approach

* Single-page Power BI dashboard
* Three primary visuals
* Clear funnel storytelling
* Minimal visual clutter
* Recruiter-friendly presentation

---

# 📌 Conclusion

The E-commerce Conversion Funnel Analysis provides a structured view of how users progress from website visits to completed purchases.

The analysis identifies significant user drop-offs across the funnel, with the **Product View → Add to Cart** transition showing the highest stage-level drop-off at **79.52%**.

The project demonstrates how **BigQuery SQL, Python/Pandas, and Power BI** can be combined to transform event-level data into meaningful business insights and actionable recommendations.

---

# 👨‍💻 Author

**Ravindra Deo Kuldeep**

Aspiring Data Analyst | Power BI | SQL | Excel | Python | Tableau

### Skills

`SQL` `Power BI` `Excel` `Python` `Pandas` `Tableau` `BigQuery` `Data Analysis`

---

# 🔗 Portfolio

* **GitHub:** [RavindraKuldeep](https://github.com/RavindraKuldeep)
* **LinkedIn:** [ARKAY](https://www.linkedin.com/in/arkay003/)
* **Tableau Public:** [Ravindra Kuldeep](https://public.tableau.com/app/profile/ravindra.kuldeep)

---

# 📜 Internship Project

**Syntecxhub — Data Analysis Internship**

Project: **E-commerce Conversion Funnel Analysis**

Focus:

**SQL + BigQuery + Python + Pandas + Power BI + Business Insights**

---

# ⭐ Project Summary

| Category               | Details                                       |
| ---------------------- | --------------------------------------------- |
| **Project Type**       | E-commerce Analytics                          |
| **Analysis Type**      | Conversion Funnel Analysis                    |
| **Data Platform**      | Google BigQuery                               |
| **SQL Environment**    | BigQuery SQL                                  |
| **Python Environment** | Google Colab                                  |
| **Python Libraries**   | Pandas, Matplotlib                            |
| **Visualization Tool** | Power BI                                      |
| **Primary Funnel**     | Visit → Product View → Add to Cart → Purchase |
| **Dashboard**          | Single-page Power BI                          |
| **Main Visuals**       | 3                                             |
| **Key Focus**          | Conversion, Drop-off & Bottlenecks            |
| **Documentation**      | Markdown                                      |
| **Version Control**    | GitHub                                        |
| **Internship**         | Syntecxhub Data Analysis Internship           |

---

## ⭐ Final Takeaway

**From raw e-commerce events to actionable business insights — this project demonstrates an end-to-end data analytics workflow using BigQuery, SQL, Python, Pandas and Power BI.**

---
