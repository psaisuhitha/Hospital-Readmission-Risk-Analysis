# Hospital-Readmission-Risk-Analysis
Predictive analytics dashboard to identify 30-day hospital readmission risk using Python, SQL, and Power BI
# 🏥 Hospital Readmission Risk Intelligence Dashboard

## Dashboard Preview
![Dashboard](dashboard/Screenshot%202026-06-16%20020523.png)

## 📌 Problem Statement
Hospital readmission within 30 days costs healthcare systems billions annually. 
This project builds a predictive analytics system to identify high-risk patients 
before discharge — enabling clinical teams to intervene proactively.

## 📊 Dataset
- Source: UCI Machine Learning Repository
- Records: 101,766 real patient records
- Features: 43 clinical variables
- Link: https://www.kaggle.com/datasets/brandao/diabetes

## 🛠️ Tools & Technologies
| Tool | Purpose |
|---|---|
| Python (Pandas, Sklearn, Seaborn) | Data cleaning, EDA, ML model |
| MySQL | Database queries & analysis |
| Power BI | Interactive dashboard |
| Random Forest | Readmission prediction |

## 🔍 Key Insights
- Overall readmission rate: **11.16%**
- **9K patients** identified as HIGH RISK
- Older patients (70-85) show highest readmission risk
- More medications = higher readmission probability
- Longer hospital stays correlate with increased risk

## 📈 Dashboard Preview
![Dashboard](exports/dashboard_screenshot.png)

## 📁 Project Structure
Hospital-Readmission-Project/

├── data/        
     → Raw dataset
├── python/   
     → Jupyter notebooks
├── sql/      
     → MySQL queries
├── dashboard/    
     → Power BI file
├── exports/     
     → Charts & cleaned data
└── README.md
