# 🧹 Project 01: Data Cleaning & Preparation

<p align="center">

![Python](https://img.shields.io/badge/Python-3.13-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-Data_Analysis-150458?logo=pandas)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter)

</p>

---

# 📖 Project Overview

This project was completed as part of my **Data Analytics Internship at DecodeLabs**.

Data cleaning is one of the most important stages of the data analytics process. Before any analysis or visualization can be performed, the data must be accurate, consistent, and free from errors.

The objective of this project was to clean and prepare a raw e-commerce dataset by identifying and resolving common data quality issues such as missing values, duplicate records, inconsistent formatting, and incorrect data types.

The final result was a structured, clean, and analysis-ready dataset that was later used in **Project 02: Exploratory Data Analysis (EDA).**

---

# 👩‍💻 Project Details

| **Field** | **Information** |
|------------|----------------|
| 📌 Project | Project 01 – Data Cleaning & Preparation |
| 🏢 Organization | DecodeLabs |
| 👩‍💻 Intern | Shifa Rehan |
| 📅 Internship Duration | 27 June 2026 – 27 July 2026 |
| 💻 Language | Python |
| 📚 Libraries | Pandas |
| 📓 IDE | Jupyter Notebook |
| 📂 Dataset | Raw E-Commerce Sales Dataset |
| 🎯 Objective | Clean and prepare raw data for accurate analysis |

---

# 🎯 Project Objectives

The primary objectives of this project were to:

| ✔ | Objective |
|---|-----------|
| ✅ | Import the raw dataset |
| ✅ | Explore the dataset structure |
| ✅ | Identify missing values |
| ✅ | Handle missing data appropriately |
| ✅ | Detect duplicate records |
| ✅ | Remove duplicate records |
| ✅ | Standardize text values |
| ✅ | Verify and correct data types |
| ✅ | Validate calculated columns |
| ✅ | Export the cleaned dataset |

---

# 📂 Dataset Description

The dataset contains customer order information from an e-commerce platform.

| Column | Description |
|----------|-------------|
| OrderID | Unique order identifier |
| Date | Order date |
| CustomerID | Customer identifier |
| Product | Product purchased |
| Quantity | Number of items ordered |
| UnitPrice | Price of one item |
| TotalPrice | Total order value |
| ShippingAddress | Customer shipping address |
| PaymentMethod | Customer payment method |
| OrderStatus | Current order status |
| TrackingNumber | Shipment tracking ID |
| ItemsInCart | Number of products in cart |
| CouponCode | Applied coupon (if any) |
| ReferralSource | Customer acquisition source |

---

# 🔄 Data Cleaning Workflow

The dataset was cleaned using the following workflow.

| Step | Task |
|------|------|
| 📥 | Imported the dataset into Jupyter Notebook |
| 🔍 | Explored dataset structure and information |
| 📊 | Identified missing values |
| 🧹 | Filled missing values where appropriate |
| 🔁 | Checked for duplicate records |
| ❌ | Removed duplicate records (if present) |
| 🔤 | Standardized text formatting |
| 📅 | Converted columns to appropriate data types |
| ✔ | Validated calculated fields such as **TotalPrice** |
| 💾 | Exported the cleaned dataset |

---

# 🧹 Cleaning Techniques Applied

## Missing Values

Missing values were identified using Pandas and handled appropriately to improve data completeness.

Examples:

- Missing coupon codes were replaced with **"NOT APPLIED"**.
- Other missing values were reviewed before applying suitable cleaning techniques.

---

## Duplicate Records

The dataset was checked for duplicate rows.

Duplicate detection ensured that each transaction appeared only once, preventing inaccurate analysis.

---

## Data Type Validation

Data types were verified and corrected where necessary.

Examples:

- Date → DateTime
- Quantity → Integer
- Unit Price → Numeric
- Total Price → Numeric

Correct data types ensure accurate calculations and analysis.

---

## Text Standardization

Text-based columns were standardized to improve consistency.

Examples include:

- Consistent capitalization
- Removal of extra spaces
- Uniform text formatting

---

## Data Validation

The relationship between **Quantity**, **Unit Price**, and **Total Price** was verified to ensure data accuracy.

Validation checks confirmed whether:

Total Price = Quantity × Unit Price

This helped identify any inconsistent records.

---

# 📊 Data Quality Checks Performed

| Check | Purpose |
|--------|---------|
| Missing Values | Identify incomplete records |
| Duplicate Records | Remove repeated entries |
| Data Types | Ensure correct formats |
| Null Values | Verify data completeness |
| Text Consistency | Standardize categorical data |
| Total Price Validation | Verify calculation accuracy |

---

# 📁 Project Files

```text
Project-01-Data-Cleaning/
│
├── 📄 Project_1_Data_Cleaning.ipynb
├── 📄 Cleaned_Dataset.csv
├── 📄 README.md
```

---

# ▶️ How to Run the Project

| Step | Description |
|------|-------------|
| 1️⃣ | Clone the repository |
| 2️⃣ | Open Jupyter Notebook |
| 3️⃣ | Navigate to Project-01-Data-Cleaning |
| 4️⃣ | Open Project_1_Data_Cleaning.ipynb |
| 5️⃣ | Run all notebook cells |

---

# 🎯 Project Outcome

At the end of this project:

✅ Missing values were handled.

✅ Duplicate records were checked and removed where necessary.

✅ Data types were standardized.

✅ Text values were cleaned for consistency.

✅ Data quality was improved.

✅ A clean, structured dataset was generated for further analysis.

The cleaned dataset produced in this project was used as the foundation for **Project 02: Exploratory Data Analysis (EDA).**

---

# 🎓 Skills Gained

| Technical Skills | Analytical Skills |
|-----------------|------------------|
| Python | Attention to Detail |
| Pandas | Data Quality Assessment |
| Data Cleaning | Problem Solving |
| Data Validation | Critical Thinking |
| Jupyter Notebook | Data Preparation |

---

# 🚀 Future Improvements

Potential future enhancements include:

- Automated data validation scripts
- Advanced missing value imputation techniques
- Data quality reports
- Data profiling using specialized libraries
- Automated preprocessing pipelines

---

# 👩‍💻 Author

| **Name** | Shifa Rehan |
|-----------|-------------|
| Role | Data Analytics Intern |
| Organization | DecodeLabs |
| Internship | 27 June 2026 – 27 July 2026 |

---

# ⭐ Acknowledgement

This project was completed as part of my **Data Analytics Internship at DecodeLabs**.

It provided practical experience in preparing raw datasets for analysis using Python and Pandas while reinforcing the importance of data quality in the data analytics workflow.

---

## 🌟 Thank You!

Thank you for visiting this repository.

If you found this project helpful or interesting, feel free to ⭐ the repository and explore my other internship projects.
