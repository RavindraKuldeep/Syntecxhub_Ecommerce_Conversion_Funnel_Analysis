# 🛒 E-commerce Conversion Funnel Analysis

An end-to-end **E-commerce Conversion Funnel Analysis** project built to understand user behavior across the purchase journey, identify major drop-off points, measure conversion performance, and derive actionable business insights.

The project follows a complete analytics workflow:

**BigQuery SQL → Python/Pandas EDA → Power BI Dashboard → Business Insights & Recommendations**

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
* Generating actionable business recommendations

---

## 🎯 Business Objectives

The main objectives of this project are to:

* Analyze the complete e-commerce conversion funnel
* Measure user drop-off at each funnel stage
* Calculate stage-to-stage conversion rates
* Identify major bottlenecks in the customer journey
* Analyze monthly funnel performance
* Build a concise Power BI dashboard
* Generate actionable business recommendations

---

## 🔄 Conversion Funnel

The analysis focuses on four key stages:

**Visit → Product View → Add to Cart → Purchase**

| Funnel Stage | Description                             |
| ------------ | --------------------------------------- |
| Visit        | Users who visited the website           |
| Product View | Users who viewed a product              |
| Add to Cart  | Users who added a product to their cart |
| Purchase     | Users who completed a purchase          |

---

## 🛠️ Tools & Technologies

| Tool                | Purpose                                                       |
| ------------------- | ------------------------------------------------------------- |
| **Google BigQuery** | Data preparation, aggregation and SQL analysis                |
| **SQL**             | Funnel calculations, bottleneck analysis and monthly analysis |
| **Python**          | Exploratory Data Analysis and validation                      |
| **Pandas**          | Data manipulation and analysis                                |
| **Power BI**        | Dashboard and data visualization                              |
| **GitHub**          | Project documentation and version control                     |

---

## 📊 SQL Analysis

BigQuery was used to transform event-level e-commerce data into analysis-ready summary tables.

### Key SQL Analyses

* Funnel stage aggregation
* Stage-to-stage conversion rates
* User drop-off analysis
* Bottleneck identification
* Monthly funnel analysis
* Channel-level funnel analysis
* Device-level funnel analysis
* KPI summary

### Analysis Tables

* `funnel_data`
* `funnel_metrics`
* `bottleneck_analysis`
* `monthly_funnel`
* `monthly_funnel_analysis`
* `channel_funnel`
* `device_funnel`
* `funnel_kpi_summary`

---

## 🐍 Python / Pandas EDA

Python and Pandas were used for exploratory analysis and validation of the funnel data.

The analysis included:

* Dataset exploration
* Funnel stage performance
* Conversion rate analysis
* Drop-off analysis
* Monthly conversion trends
* Month-on-Month conversion changes
* Highest conversion month
* Lowest conversion month
* Monthly trend visualization
* Validation of SQL results

The Python analysis provided additional analytical context before creating the Power BI dashboard.

---

## 📈 Power BI Dashboard

The final Power BI dashboard is designed as a **single-page business dashboard** with three main visuals.

### 1. Conversion Funnel

Shows the progression:

**Visit → Product View → Add to Cart → Purchase**

### 2. Funnel Stage Conversion / Drop-off

Highlights conversion and drop-off between consecutive funnel stages.

### 3. Monthly Visitors vs Purchases

Shows how visitor volume and purchase volume change over time.

The dashboard was intentionally kept concise to provide a clear view of funnel performance without unnecessary visual clutter.

---

## 💡 Business Insights

### 1. High Drop-off at Product Discovery

Only **22.70%** of visitors progress from Visit to Product View, resulting in a **77.30% drop-off** at the first major funnel transition.

### 2. Product-to-Cart Conversion Challenge

The Product View → Add to Cart stage h
