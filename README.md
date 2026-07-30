# SAP Accounts Receivable to Snowflake Pipeline

## 🚀 Projenin Amacı (Project Overview)
Bu projenin amacı, büyük ölçekli kurumsal sistemlerde (SAP) tutulan kritik finansal verileri (Alacak Hesapları - Accounts Receivable), modern bulut veri ambarı olan **Snowflake**'e güvenli ve ölçeklenebilir bir şekilde taşımaktır. Süreç, tamamen bulut tabanlı ve sıfır yerel kurulum gerektirecek şekilde tasarlanmıştır.

## 🛠️ Kullanılan Araçlar & Teknolojiler (Tech Stack)
- **Source (Kaynak):** SAP (Financial Accounting / Accounts Receivable)
- **Orchestration & ETL:** Azure Data Factory (ADF)
- **Destination (Hedef Veri Ambarı):** Snowflake
- **Version Control & Portfolio:** Git & GitHub

## 📂 Proje Mimarisi ve Klasör Yapısı (Repository Structure)
```text
sap-to-snowflake-pipeline/
│
├── README.md                 # Proje dokümantasyonu
├── docs/
│   └── architecture.md       # Sistem mimarisi ve akış açıklaması
├── pipelines/
│   └── adf_pipeline_steps.md # Azure Data Factory yapılandırma adımları
└── sql/
    └── snowflake_Setup.sql   # Snowflake veri tabanı ve tablo oluşturma betikleri
