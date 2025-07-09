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