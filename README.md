# 📊 Sales Performance & Customer Insights Dashboard

An end-to-end Business Intelligence project built using **SQL, Power BI, Power Query, and DAX** to analyze sales performance, customer behavior, revenue trends, and profitability.

---

## 🚀 Project Overview

This project demonstrates how raw transactional data can be transformed into meaningful business insights using a complete data analytics workflow.

The dashboard focuses on:

* Sales and revenue performance
* Customer analysis
* Product performance
* Profitability analysis
* Revenue trends over time
* Customer churn analysis
* Interactive business intelligence reporting

---

## 🛠️ Tech Stack

| Technology      | Purpose                                            |
| --------------- | -------------------------------------------------- |
| **SQL**         | Data extraction, joins, filtering and aggregations |
| **Power Query** | Data cleaning and transformation                   |
| **Power BI**    | Data modeling and dashboard development            |
| **DAX**         | Calculated measures and time-intelligence analysis |
| **GitHub**      | Project documentation and version control          |

---

## 🔄 Data Analytics Workflow

### 1. Data Extraction

SQL queries are used to extract and combine data from multiple relational tables such as:

* Transactions
* Customers
* Products
* Geography

The extraction process includes joins, filtering, calculations, and aggregations.

### 2. Data Transformation

Power Query is used for:

* Removing invalid or missing records
* Standardizing data types
* Cleaning transactional data
* Creating calculated/conditional columns
* Preparing data for analysis

### 3. Data Modeling

The project follows a **Star Schema** approach with a central transaction/fact table connected to relevant dimension tables.

Example structure:

```text
                    Dim_Customer
                         │
                         │
Dim_Product ───── Fact_Transactions ───── Dim_Date
                         │
                         │
                  Dim_Geography
```

### 4. Dashboard Development

Power BI is used to create interactive visualizations including:

* KPI Cards
* Line Charts
* Bar Charts
* Matrix Tables
* Slicers
* Trend Analysis
* Customer Analysis

---

## 📐 Key DAX Measures

### Total Revenue

```dax
Total Revenue =
SUM(Fact_Transactions[SalesAmount])
```

### Total Profit

```dax
Total Profit =
SUM(Fact_Transactions[ProfitAmount])
```

### Profit Margin %

```dax
Profit Margin % =
DIVIDE(
    [Total Profit],
    [Total Revenue],
    0
)
```

### Total Units Sold

```dax
Total Units Sold =
SUM(Fact_Transactions[Quantity])
```

### Revenue Last Year

```dax
Revenue LY =
CALCULATE(
    [Total Revenue],
    SAMEPERIODLASTYEAR('Dim_Date'[Date])
)
```

### YoY Revenue Growth

```dax
YoY Revenue Growth $ =
[Total Revenue] - [Revenue LY]
```

### YoY Revenue Growth %

```dax
YoY Revenue Growth % =
DIVIDE(
    [YoY Revenue Growth $],
    [Revenue LY],
    0
)
```

### Total Customers

```dax
Total Customers =
DISTINCTCOUNT(Fact_Transactions[CustomerID])
```

### Active Customers

```dax
Active Customers =
CALCULATE(
    DISTINCTCOUNT(Fact_Transactions[CustomerID]),
    'Dim_Customer'[IsChurned] = FALSE
)
```

### Churned Customers

```dax
Churned Customers =
CALCULATE(
    DISTINCTCOUNT(Fact_Transactions[CustomerID]),
    'Dim_Customer'[IsChurned] = TRUE
)
```

### Customer Churn Rate

```dax
Customer Churn Rate =
DIVIDE(
    [Churned Customers],
    [Total Customers],
    0
)
```

---

## 📊 Dashboard Features

The dashboard is designed to provide a clear overview of business performance through:

* **Revenue Trends** — Analyze sales performance across different time periods.
* **Profitability Analysis** — Compare revenue, cost, and profit performance.
* **Customer Insights** — Understand customer segments and activity.
* **Churn Analysis** — Identify customer retention and churn patterns.
* **Product Analysis** — Compare product/category performance.
* **Interactive Filtering** — Explore insights using Power BI slicers and filters.

---

## 📁 Repository Structure

```text
sales-customer-insights-dashboard/
│
├── README.md
│
├── sql/
│   └── data_extraction.sql
│
├── power-query/
│   └── transformations.m
│
├── dax/
│   └── measures.dax
│
└── assets/
    └── dashboard_preview.md
```

---

## 💡 Key Skills Demonstrated

* SQL Data Extraction
* SQL Joins & Aggregations
* Data Cleaning
* Power Query / ETL
* Data Modeling
* Star Schema
* DAX Measures
* Time Intelligence
* Customer Analytics
* Sales Analytics
* Business Intelligence
* Data Visualization
* Power BI Dashboard Development

---

## 🎯 Project Objective

The objective of this project is to demonstrate an end-to-end data analytics workflow — starting from raw relational data and transforming it into an interactive Power BI dashboard that can support business analysis and decision-making.

---

## 👩‍💻 Author

**Jiya Mulla**

B.Tech — Electronics & Telecommunication Engineering

Interested in **Data Analytics, Business Intelligence, Python, SQL, and Power BI**.
