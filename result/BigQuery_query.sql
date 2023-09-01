-- Business Intelligence Analyst Project Based Internship Program
-- Bank Muamalat and Rakamin Academy
-- Final Project


-- Query to get data from BigQuery
SELECT
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    p.Price * o.Quantity AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM
    `bi-muamalat-2022.Final_Task.Orders` AS o
    INNER JOIN `bi-muamalat-2022.Final_Task.Customers` AS c ON o.CustomerID = c.CustomerID
    INNER JOIN `bi-muamalat-2022.Final_Task.Products` AS p ON o.ProdNumber = p.ProdNumber
    INNER JOIN `bi-muamalat-2022.Final_Task.ProductCategory` AS pc ON p.Category = pc.CategoryID
ORDER BY
    o.Date;
