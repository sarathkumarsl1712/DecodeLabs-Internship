CREATE DATABASE project3_sql_analysis;
USE project3_sql_analysis;
CREATE TABLE ecommerce_sales (
    OrderID VARCHAR(20),
    Date DATE,
    CustomerID VARCHAR(20),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(100),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2),
    Duplicate_Check INT
);

SELECT * 
FROM ecommerce_sales;

SELECT *
FROM ecommerce_sales
LIMIT 10;

SELECT OrderID,
       Product,
       TotalPrice
FROM ecommerce_sales
WHERE TotalPrice > 2000;

SELECT *
FROM ecommerce_sales
WHERE OrderStatus = 'Delivered';

SELECT OrderID,
       Product,
       TotalPrice
FROM ecommerce_sales
ORDER BY TotalPrice DESC;

SELECT COUNT(*) AS Total_Orders
FROM ecommerce_sales;

SELECT SUM(TotalPrice) AS Total_Revenue
FROM ecommerce_sales;

SELECT AVG(TotalPrice) AS Avg_Order_Value
FROM ecommerce_sales;

SELECT Product,COUNT(*) AS Orders
FROM ecommerce_sales
GROUP BY Product;

SELECT Product,SUM(TotalPrice) AS Revenue
FROM ecommerce_sales
GROUP BY Product
ORDER BY Revenue DESC;

SELECT Product, SUM(Quantity) AS Total_Units
FROM ecommerce_sales
GROUP BY Product
ORDER BY Total_Units DESC
LIMIT 1;

SELECT PaymentMethod, SUM(TotalPrice) AS Revenue
FROM ecommerce_sales
GROUP BY PaymentMethod
ORDER BY Revenue DESC;

SELECT PaymentMethod, COUNT(*) AS Total_Orders
FROM ecommerce_sales
GROUP BY PaymentMethod;

SELECT ReferralSource, COUNT(*) AS Orders
FROM ecommerce_sales
GROUP BY ReferralSource
ORDER BY Orders DESC;

SELECT ReferralSource, SUM(TotalPrice) AS Revenue
FROM ecommerce_sales
GROUP BY ReferralSource
ORDER BY Revenue DESC;

SELECT CouponCode, COUNT(*) AS Usage_Count
FROM ecommerce_sales
GROUP BY CouponCode;

SELECT OrderStatus, COUNT(*) AS Total_Orders
FROM ecommerce_sales
GROUP BY OrderStatus;

SELECT MONTH(Date) AS Month_No, SUM(TotalPrice) AS Revenue
FROM ecommerce_sales
GROUP BY MONTH(Date)
ORDER BY Month_No;

SELECT AVG(ItemsInCart) AS Avg_Items_Cart
FROM ecommerce_sales;

SELECT CustomerID, SUM(TotalPrice) AS Total_Spent
FROM ecommerce_sales
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 5;

