# Customer Conversion Modeling in R

[![Language](https://img.shields.io/badge/Language-R-blue?style=flat-square)]()
[![Course](https://img.shields.io/badge/Course-MKT%204314-orange?style=flat-square)]()
[![Status](https://img.shields.io/badge/Status-Completed-success?style=flat-square)]()

---

## 📈 Executive Summary
This project analyzes e-commerce customer conversion drivers using 800 observations and 6 key variables[cite: 2, 5]. It builds, compares, and evaluates **Linear Probability Models (LPM)** and **Logistic Regression** to understand customer purchasing behavior.

---

## 🔄 Analytical Pipeline

```mermaid
graph TD;
    A[Raw Data: marketing_conversion_data.csv] --> B[Data Audit: sum.is.na];
    B --> C[Model Estimation: LPM vs Logistic];
    C --> D[Campaign Simulation: 0 to 12 Email Opens];
    D --> E[Holdout Validation: 400 Train / 400 Test];
    E --> F[Final Selection: Model_2 & AIC Comparison];
