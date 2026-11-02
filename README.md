<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Segoe+UI&weight=600&size=28&duration=4000&pause=1000&color=007ACC&center=true&vCenter=true&width=650&lines=Customer+Conversion+Modeling+in+R;Logistic+Regression+%26+LPM+Analysis" alt="Typing SVG" />
</p>

<p align="center">
  <a href="#"><img src="https://img.shields.io/badge/Language-R-blue?style=flat-square" alt="Language"></a>
  <a href="#"><img src="https://img.shields.io/badge/Focus-Conversion_Modeling-3776AB?style=flat-square" alt="Focus"></a>
  <a href="#"><img src="https://img.shields.io/badge/Status-Completed-success?style=flat-square" alt="Status"></a>
</p>

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
