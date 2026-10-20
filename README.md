# 🏦 Bank Client Risk Analysis

An end-to-end Data Analytics project focused on analyzing banking client data, understanding risk distribution, exploring financial indicators, and building an interactive Power BI dashboard using **Python, SQL, and Power BI**.

## 📌 Project Overview

The objective of this project is to analyze banking client information to understand client risk profiles, explore financial behavior, and identify patterns across different occupation groups.

The project combines data analysis, SQL querying, and interactive dashboard development to transform raw banking data into meaningful business insights.

## 🎯 Project Objectives

- Analyze the distribution of clients across different risk categories.
- Explore client income, bank loans, and bank deposits.
- Analyze occupation-wise client distribution.
- Group individual occupation titles into broader professional categories.
- Examine high-risk clients based on Risk Weighting.
- Develop an interactive dashboard for business analysis.

## 🛠️ Tools & Technologies

- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** MySQL, SQL queries, aggregation, filtering, and risk analysis
- **Power BI:** Interactive dashboard, KPI cards, charts, slicers, and DAX measures
- **Jupyter Notebook:** Data analysis and documentation
- **GitHub:** Project versioning and portfolio presentation

## 📂 Dataset Overview

The dataset contains banking client information, including:

- Client ID and client profile details
- Age, nationality, and occupation
- Banking relationship and loyalty classification
- Estimated income
- Credit card balance
- Bank loans and deposits
- Checking and saving accounts
- Risk Weighting

The dataset contains **3,000 records and 25 columns**. The occupation column contains **195 unique occupation titles**.

## 🐍 Python Analysis

Python was used for data inspection, cleaning checks, exploratory data analysis, and occupation grouping.

Key activities:
- Loaded the dataset using Pandas.
- Inspected dataset dimensions, column names, and data types.
- Checked missing values and duplicate records.
- Examined repeated Client IDs before making deduplication decisions.
- Converted the Joined Bank column to datetime format.
- Explored numerical and categorical variables.
- Analyzed risk categories and financial indicators.
- Grouped occupation titles into broader professional categories.
- Created visualizations to understand patterns in the data.

## 🗄️ SQL Analysis

SQL was used to query and analyze banking client data.

Areas of analysis:
- Risk Weighting distribution and client counts.
- Aggregation and grouping of client information.
- Filtering records for specific risk categories.
- Exploring financial indicators and occupation-related patterns.

*Note: Add the exact SQL queries and findings you executed to document the SQL analysis in detail.*

## 📊 Power BI Dashboard

An interactive Power BI dashboard was developed to present key metrics and risk patterns.

Dashboard components:
- **KPI Cards:** Total Records, Unique Clients, Average Estimated Income, Total Bank Loans, and Total Bank Deposits.
- **Risk Analysis:** Distribution of clients across Risk Weighting categories.
- **Occupation Analysis:** Client distribution by Occupation Group.
- **Financial Analysis:** Comparison of bank loans and bank deposits.
- **High-Risk Analysis:** Exploration of clients with Risk Weighting 4 and 5.
- **Interactive Filters:** Risk Weighting, Occupation Group, Loyalty Classification, and Joined Bank.

## 💡 Business Questions

1. How are clients distributed across different risk categories?
2. Which occupation groups have the highest number of clients?
3. How do income levels vary across occupation groups?
4. How do bank loans compare with bank deposits?
5. Which occupation groups contain more clients classified in the higher-risk categories?
6. How can interactive reporting support further investigation of client risk?

## 📈 Key Outcomes

- Developed a structured workflow combining Python, SQL, and Power BI.
- Explored client risk and financial characteristics.
- Created occupation groups to simplify categorical analysis.
- Built a dashboard to support interactive exploration of banking data.


## 📦 Python Requirements

```text
pandas
numpy
matplotlib
seaborn
jupyter
```


## ⚠️ Disclaimer

This project is for educational and portfolio purposes. Risk categories represent the labels available in the dataset and should not be treated as a validated credit-risk model or used alone for lending decisions. Protect confidential or personal client information before publishing any files.

## 👨‍💻 Author

**Madhav Sehgal**

Aspiring Data Analyst | Python | SQL | Power BI | Advanced Excel
