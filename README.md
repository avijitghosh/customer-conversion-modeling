<p align="left">
  <img src="https://readme-typing-svg.demolab.com?font=Segoe+UI&weight=600&size=28&duration=4000&pause=1000&color=24292E&center=false&vCenter=true&width=650&lines=Customer+Conversion+Modeling+in+R;Marketing+Analytics+Assignment" alt="Typing SVG" />
</p>

[![Language](https://img.shields.io/badge/Language-R-blue?style=flat-square)]()
[![Focus](https://img.shields.io/badge/Focus-Customer_Conversion-orange?style=flat-square)]()
[![Status](https://img.shields.io/badge/Status-Completed-success?style=flat-square)]()

---

## 📈 Executive Summary
Dis project analyzes e-commerce customer conversion drivers using 800 observations and 6 key variables[cite: 2, 5]. It builds, compares, and evaluates **Linear Probability Models (LPM)** and **Logistic Regression** to understand customer purchasing behavior.

---

## 🔄 Analytical Pipeline

```mermaid
graph TD;
    A[Raw Data: marketing_conversion_data.csv] --> B[Data Audit: sum.is.na];
    B --> C[Model Estimation: LPM vs Logistic];
    C --> D[Campaign Simulation: 0 to 12 Email Opens];
    D --> E[Holdout Validation: 400 Train / 400 Test];
    E --> F[Final Selection: Model_2 & AIC Comparison];
