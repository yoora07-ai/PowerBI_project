# Credit Card Spend Analysis in India

## Project Overview
This project analyzes **credit card spending behavior in India** using customer demographic data.
The goal is to identify **target customer segments** for a **shopping-oriented credit card** by examining spending patterns across age groups, occupations, cities, and product categories.

---

## Objective
- Understand customer spending behavior based on demographics (age, city, occupation)
- Identify high-value customer segments for a **shopping-focused credit card**
- Demonstrate an end-to-end analytics workflow:
  - Data modeling
  - SQL transformation
  - Business intelligence visualization
  - Strategic recommendation

---

## Data Source
- **Dataset**: Credit Card Exploratory Data Analysis – Customer Acquisition  
- **Source**: Kaggle  
- **Author**: Darpan Bajaj  
- **Year**: 2023  

🔗 https://www.kaggle.com/datasets/darpan25bajaj/credit-card-exploratory-data-analysis

---

## Data Schema

### Dimension Table: `Customer`
| Column | Description |
|------|------------|
| customer | Customer ID (Primary Key) |
| age | Customer age |
| city | City of residence |
| product | Card product type |
| limit | Credit limit |
| company | Employer |
| segment | Customer segment |

### Fact Table: `Spend`
| Column | Description |
|------|------------|
| customer | Customer ID (Foreign Key) |
| month | Transaction month |
| type | Spending category |
| amount | Transaction amount |
| sl_no | Transaction ID |

---

## Data Transformation
- **Tool Used**: MySQL
- Explored all tables using `SELECT` statements
- Selected only relevant demographic and spending columns
- Combined customer and spending data using a **LEFT JOIN**
- Aggregated spending behavior using `SUM()` and `AVG()`

---
![Power BI Dashboard](Credit_Card_Spending_Analysis/visualization/dashboard.png)

## Key Insights
- Customer spending behavior varies significantly by age group, indicating that a one-size-fits-all credit card strategy is ineffective.
- Teen customers (10s) primarily spend on essential categories such as transportation and typically have part-time jobs, resulting in low discretionary spending.
- Customers in their 40s show the highest spending on shopping-related categories such as clothing and jewelry, and many are business owners, indicating strong purchasing power.
- Occupation is a strong predictor of spending patterns, with business owners and self-employed customers exhibiting higher spending on premium and lifestyle categories.
- Contrary to common assumptions, middle-aged customers generate more shopping-related value than younger customers.

 ## Business Takeaway
- A shopping-oriented credit card should target customers in their 40s, particularly those with stable income and business ownership.
- Data-driven segmentation based on demographics and occupation leads to more effective product and marketing strategies.
