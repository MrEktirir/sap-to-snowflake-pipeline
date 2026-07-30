# SAP Accounts Receivable to Snowflake Pipeline

## 🚀 Project Overview
The purpose of this project is to securely and scalably migrate critical financial data (Accounts Receivable) from large-scale enterprise systems (**SAP**) to a modern cloud data warehouse (**Snowflake**). The entire workflow is designed to be cloud-based, requiring zero local software installations.

## 🛠️ Tech Stack
- **Source:** SAP (Financial Accounting / Accounts Receivable)
- **Orchestration & ETL:** Azure Data Factory (ADF)
- **Destination:** Snowflake
- **Version Control & Portfolio:** Git & GitHub

## 📂 Repository Structure
```text
sap-to-snowflake-pipeline/
│
├── README.md                 # Project documentation
├── docs/
│   └── architecture.md       # System architecture and workflow description
├── pipelines/
│   └── adf_pipeline_steps.md # Azure Data Factory configuration steps
└── sql/
    └── snowflake_Setup.sql   # Snowflake database and table setup scripts
