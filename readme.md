\# 🛒 E-commerce Conversion Funnel Analysis



An end-to-end \*\*E-commerce Conversion Funnel Analysis\*\* project built to understand user behavior across the purchase journey, identify major drop-off points, measure conversion performance, and derive actionable business insights.



The project follows a complete analytics workflow:



\*\*BigQuery SQL → Python/Pandas EDA → Power BI Dashboard → Business Insights \& Recommendations\*\*



\---



\## 📌 Project Overview



E-commerce businesses receive a large number of visitors, but only a portion of them progress through the complete purchase journey.



This project analyzes the conversion funnel from \*\*Visit → Product View → Add to Cart → Purchase\*\* to identify:



\* Where users are dropping off

\* Stage-to-stage conversion rates

\* Major funnel bottlenecks

\* Monthly conversion trends

\* Opportunities to improve user conversion



\---



\## 🎯 Business Objectives



The main objectives of this project are to:



\* Analyze the complete e-commerce conversion funnel

\* Measure user drop-off at each funnel stage

\* Calculate stage-to-stage conversion rates

\* Identify the major bottlenecks in the customer journey

\* Analyze monthly funnel performance

\* Visualize funnel performance using Power BI

\* Generate actionable business recommendations



\---



\## 🔄 Conversion Funnel



The analysis focuses on four key stages:



\*\*Visit → Product View → Add to Cart → Purchase\*\*



| Funnel Stage | Description                             |

| ------------ | --------------------------------------- |

| Visit        | Users who visited the website           |

| Product View | Users who viewed a product              |

| Add to Cart  | Users who added a product to their cart |

| Purchase     | Users who completed a purchase          |



\---



\## 🛠️ Tools \& Technologies



| Tool                | Purpose                                                       |

| ------------------- | ------------------------------------------------------------- |

| \*\*Google BigQuery\*\* | Data preparation, aggregation and SQL analysis                |

| \*\*SQL\*\*             | Funnel calculations, bottleneck analysis and monthly analysis |

| \*\*Python\*\*          | Exploratory Data Analysis and validation                      |

| \*\*Pandas\*\*          | Data manipulation and analysis                                |

| \*\*Power BI\*\*        | Interactive dashboard and visualization                       |

| \*\*GitHub\*\*          | Project documentation and version control                     |



\---



\## 📊 SQL Analysis



BigQuery was used to transform the raw event-level data into analysis-ready summary tables.



Key SQL analyses included:



\* Funnel stage aggregation

\* Stage-to-stage conversion rates

\* User drop-off analysis

\* Bottleneck identification

\* Monthly funnel analysis

\* Channel-level funnel analysis

\* Device-level funnel analysis

\* KPI summary



\### Key Analysis Tables



\* `funnel\_data`

\* `funnel\_metrics`

\* `funnel\_kpi\_summary`

\* `bottleneck\_analysis`

\* `monthly\_funnel`

\* `monthly\_funnel\_analysis`

\* `channel\_funnel`

\* `device\_funnel`



\---



\## 🐍 Python EDA



Python and Pandas were used to validate and explore the funnel data before visualization.



The analysis focused on:



\* Funnel stage performance

\* Conversion rates

\* Drop-off percentages

\* Monthly conversion trends

\* Highest and lowest conversion periods

\* Data validation and consistency checks



The Python analysis helped validate the SQL results and provided additional analytical context before building the Power BI dashboard.



\---



\## 📈 Power BI Dashboard



The final dashboard presents the funnel analysis in a \*\*single-page business dashboard\*\*.



\### Dashboard Visuals



\*\*1. Conversion Funnel\*\*



Displays the progression:



\*\*Visit → Product View → Add to Cart → Purchase\*\*



\*\*2. Funnel Stage Conversion / Drop-off\*\*



Highlights the conversion and drop-off between consecutive funnel stages.



\*\*3. Monthly Visitors vs Purchases\*\*



Shows how visitor volume and purchase volume change over time.



The dashboard was designed to provide a concise view of the overall funnel performance without unnecessary visual clutter.



\---



\## 💡 Business Insights



\### 1. High Drop-off at Product Discovery



Only \*\*22.7%\*\* of visitors progress from Visit to Product View, resulting in a \*\*77.3% drop-off\*\* at the first stage.



\### 2. Product-to-Cart Conversion Challenge



The Product View → Add to Cart stage has a \*\*20.48% conversion rate\*\*, with \*\*79.52% of users dropping off\*\* before adding a product to their cart.



\### 3. Cart-to-Purchase Shows Better Conversion



\*\*35.23%\*\* of users who add products to their cart proceed to purchase, making this the strongest stage-to-stage conversion in the analyzed funnel.



\### 4. Early Funnel Stages Need Attention



The largest volume of users is lost before reaching the cart. Improving product discovery, product-page engagement and add-to-cart actions could therefore support better downstream conversion.



\### 5. Monthly Monitoring Is Important



Monthly funnel analysis helps identify changes in visitor volume, purchase volume and conversion performance over time, allowing businesses to monitor whether funnel improvements are producing measurable changes.



\---



\## 🚀 Business Recommendations



Based on the funnel analysis, businesses could consider:



\* Improving product discovery and navigation

\* Optimizing product-page user experience

\* Making product information and pricing more prominent

\* Strengthening \*\*Add to Cart\*\* calls-to-action

\* Using relevant product recommendations

\* Investigating cart and checkout friction

\* Monitoring conversion rates by month, channel and device

\* Running A/B tests on product pages and conversion elements



\---



\## 📂 Project Workflow



```text

Raw E-commerce Data

&#x20;       ↓

&#x20;  BigQuery

&#x20;       ↓

&#x20;  SQL Analysis

&#x20;       ↓

&#x20;Summary Tables

&#x20;       ↓

&#x20;Python / Pandas EDA

&#x20;       ↓

&#x20;   Power BI

&#x20;       ↓

&#x20;Dashboard \& Insights

&#x20;       ↓

&#x20;Business Recommendations

```



\---



\## 📁 Project Structure



```text

E-commerce-Conversion-Funnel-Analysis/

│

├── BigQuery/

│   ├── 01\_Funnel\_Data.sql

│   ├── 02\_Funnel\_Metrics.sql

│   ├── 03\_Bottleneck\_Analysis.sql

│   ├── 04\_Monthly\_Funnel.sql

│   ├── 05\_Channel\_Funnel.sql

│   └── 06\_Device\_Funnel.sql

│

├── Python/

│   └── E-commerce\_Funnel\_Analysis.ipynb

│

├── PowerBI/

│   └── Dashboard\_Screenshot.png

│

├── Documentation/

│   └── Data\_Dictionary.md

│

└── README.md

```



\---



\## 📌 Key Metrics



\### Funnel Conversion



| Funnel Transition          | Users at Start | Users at Next Stage | Conversion Rate | Drop-off |

| -------------------------- | -------------: | ------------------: | --------------: | -------: |

| Visit → Product View       |        269,792 |              61,252 |          22.70% |   77.30% |

| Product View → Add to Cart |         61,252 |              12,545 |          20.48% |   79.52% |

| Add to Cart → Purchase     |         12,545 |               4,419 |          35.23% |   64.77% |



\---



\## 🎓 Skills Demonstrated



This project demonstrates practical skills in:



\* SQL

\* Google BigQuery

\* Data Cleaning \& Transformation

\* Exploratory Data Analysis

\* Python

\* Pandas

\* Funnel Analysis

\* Conversion Rate Analysis

\* Drop-off Analysis

\* Business Analysis

\* Data Visualization

\* Power BI

\* Dashboard Design

\* Business Insight Generation



\---



\## 👨‍💻 Author



\*\*Ravindra Deo Kuldeep\*\*



Aspiring Data Analyst | SQL | Power BI | Excel | Python | Tableau



\### 🔗 Connect



\* \*\*GitHub:\*\* https://github.com/RavindraKuldeep

\* \*\*LinkedIn:\*\* https://www.linkedin.com/in/arkay003/

\* \*\*Tableau Public:\*\* https://public.tableau.com/app/profile/ravindra.kuldeep



\---



\## ⭐ Project Summary



This project demonstrates an end-to-end approach to solving a real-world e-commerce analytics problem — from \*\*raw event data and SQL-based transformation to Python analysis, Power BI visualization, and business recommendations\*\*.



The analysis focuses not only on reporting funnel metrics but also on understanding \*\*where users are lost and where businesses can focus their optimization efforts\*\*.



