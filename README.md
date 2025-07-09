# E-Commerce Data Pipeline (Azure)

## 🚀 Project Summary
This project demonstrates an end-to-end data pipeline using **Azure Data Factory**, **Azure Blob Storage**, and **Azure SQL Database** to load and process E-Commerce data from CSV files.

## 🧱 Tools Used
- **Azure Blob Storage**: Used to store raw CSV files
- **Azure Data Factory**: Used to create pipelines and move data
- **Azure SQL Database**: Destination to store structured data
- **Azure Data Studio**: Used for SQL querying and verification

## 📂 Dataset Details
The dataset was taken from the UCI Online Retail dataset via Kaggle and contains:
- `InvoiceNo`, `StockCode`, `Description`, `Quantity`, `InvoiceDate`, `UnitPrice`, `CustomerID`, `Country`

## 🔁 Pipeline Flow

1. Upload `Orders.csv` to Azure Blob container `raw`
2. Create Azure SQL Database `ecomdb`
3. Create table `orders` using SQL script
4. Build ADF pipeline using Copy Data Tool:
   - Source: Azure Blob → Orders.csv
   - Destination: Azure SQL → orders table
5. Validate data in Azure Data Studio using `SELECT * FROM orders`

## 🧪 Sample SQL

```sql
CREATE TABLE orders (
  InvoiceNo NVARCHAR(20),
  StockCode NVARCHAR(20),
  Description NVARCHAR(MAX),
  Quantity INT,
  InvoiceDate DATETIME,
  UnitPrice FLOAT,
  CustomerID NVARCHAR(20),
  Country NVARCHAR(100)
);
```

## 📸 Screenshots
📎 Add screenshots of:
- Azure Blob upload
- ADF pipeline creation
- Azure SQL DB setup

## 🧠 Learning Outcome
- Built cloud-based data pipelines
- Learned Azure Blob + ADF + SQL integration
- Hands-on practice for real-world data engineering

## 📎 License
MIT
