CREATE database RetailSalesData;
USE RetailSalesData;
create table Sales_Data_Transactions (
Customer_id VARCHAR(255),
trans_date VARCHAR(255),
trans_amount INT);

DROP TABLE Sales_Data_Transactions
CREATE table Sales_Data_Response (
Customer_id VARCHAR(255) PRIMARY KEY,
response INT);

LOAD DATA INFILE 'C:\Program Files\MySQL\MySQL Server 8.0\Upload\Sales_Data_Transactions'
INTO TABLE Sales_Data_Transactions 
FIELDS terminated by ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
	
 EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE CUSTOMER_ID = 'C55295'; 
 CREATE INDEX idx_id ON Sales_Data_Transactions(CUSTOMER_ID);
  EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE CUSTOMER_ID = 'C55295'; 
 