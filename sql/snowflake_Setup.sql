-- 1. Rol ve Warehouse (İşlem gücü) seçimi
USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;

-- 2. Proje için özel bir Veritabanı ve Şema oluşturalım
CREATE DATABASE IF NOT EXISTS SAP_FINANCE_DB;
CREATE SCHEMA IF NOT EXISTS SAP_FINANCE_DB.RAW_DATA;

USE DATABASE SAP_FINANCE_DB;
USE SCHEMA RAW_DATA;

-- 3. SAP Alacak Hesapları (Accounts Receivable) için Ham Veri Tablosu
CREATE OR REPLACE TABLE sap_ar_raw (
    customer_id STRING,
    company_code STRING,
    document_number STRING,
    fiscal_year INT,
    posting_date DATE,
    due_date DATE,
    amount_in_doc_currency FLOAT,
    currency_code STRING,
    loaded_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);
