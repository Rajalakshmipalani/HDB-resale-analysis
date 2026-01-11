**Singapore HDB Resale Price Analysis (2017–2024)**

**Project Overview**

This project analyzes Singapore HDB resale flat transactions from 2017 to 2024 to uncover pricing trends, value retention patterns, and key drivers of resale prices.
The goal is to move beyond basic price trends and provide actionable, data-driven insights using Python, SQL, and Power BI, following an end-to-end analytics workflow — from data cleaning and feature engineering to advanced KPI design and dashboard storytelling.
________________________________________
**Business Objectives**
The analysis aims to answer the following key questions:
1.	How have HDB resale prices evolved year-over-year?

2.	Which towns and flat types command higher resale premiums?

3.	How does flat age and remaining lease impact resale value?

4.	Do higher floors consistently attract higher prices?

5.	Which flat types retain value better as they age?

________________________________________
**Dataset**

●	Source: Kaggle – Singapore HDB Resale Flat Prices (2017–2024)

●	Records: 180,000 transactions

●	Granularity: Individual resale transactions

●	Key Fields: Town, Flat Type, Floor Area,Resale price,price per sqft,Flat age

________________________________________
**Tools & Technologies**

●	Python: Pandas, NumPy, Matplotlib (Data Cleaning, EDA, Feature Engineering)

●	SQL (PostgreSQL): Aggregations, Window Functions, Median & YoY Calculations

●	Power BI: Data Modeling, DAX Measures, Interactive Dashboards

●	GitHub: Version control & documentation

________________________________________
**Methodology**

Data Cleaning & Preparation (Python)

●	Checked for null values.

●	Converted Year column into Date format.

________________________________________

**Feature Engineering**

Custom analytical features were created to improve insight quality:

●	Flat Age: Current year – lease commencement year

●	Price per Sqft: Resale price / floor area

●	Flat Condition: New / Mid / Old (age-based buckets)

●	Floor Rise Category: Low / Mid / High floors using quantile cuts

________________________________________

**Exploratory Data Analysis (EDA)**

●	Price distributions across towns and flat types

●	Relationship between floor area, age, and resale price

●	Identification of outliers and skewness

________________________________________

**SQL Analysis**

SQL was used for:

●	Yearly aggregations and trend analysis

●	Median price calculations

●	YoY growth using window functions

●	Queries not efficiently achievable using Power BI DAX

________________________________________

**Dashboard (Power BI)**

An interactive Power BI dashboard was built with:

●	Dynamic slicers (Year, Region, Town, Flat Type)

●	Median-based Cards

●	Trend analysis and comparative visuals

●	Advanced analytical charts (scatter plots, retention index)

________________________________________
**Key Metrics**

●	Median Resale Price

●	YoY % Growth (Median-based)

●	Average Price per Sqft

●	Total Transactions

●	Value Retention Index
 (Median price of older flats ÷ Median price of newer flats)

Why Median?

Median values were chosen over averages to minimize distortion from extreme high-value transactions.
________________________________________
**Key Insights**

●	Resale prices show strong post-2020 growth with increased volatility.

●	Larger flat types (4-Room & 5-Room) demonstrate better long-term value retention.

●	Higher floors generally command a premium, though the impact varies by town.

●	Flat age negatively impacts price, but the rate of decline differs significantly across flat types.

●	Certain mature towns retain resale value better despite older housing stock.

