# Azure Data Factory (ADF) Pipeline Integration Steps

This document outlines the architecture and configuration steps used to extract SAP Accounts Receivable (AR) data and load it into Snowflake using Azure Data Factory.

## 1. Linked Services Configuration
- **SAP Linked Service:** Connected to the SAP source system using SAP Table connector or Integration Runtime (IR) with proper SNC/credentials.
- **Snowflake Linked Service:** Connected to Snowflake (`SAP_FINANCE_DB`) using Key-Pair authentication or basic database credentials via Snowflake Connector for ADF.

## 2. Dataset Setup
- **Source Dataset (SAP):** Points to the financial accounting document segment table containing open items / accounts receivable data.
- **Sink Dataset (Snowflake):** Points to `SAP_FINANCE_DB.RAW_DATA.sap_ar_raw`.

## 3. Copy Activity Pipeline (`pl_sap_ar_to_snowflake`)
- **Source:** Select query or table filter from SAP.
- **Sink:** Bulk copy into Snowflake using internal/external staging for optimal performance.
- **Monitoring:** Configured with Azure Monitor alerts for pipeline failures.
