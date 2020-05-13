-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName , CategoryName 
FROM Product
JOIN Category on Category.id = Product.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
-- -- 
-- SELECT [Order].Id, Shipper.CompanyName 
-- FROM [Order]
-- JOIN Shipper on Shipper.Id = [Order].Shipvia;
-- -- 
-- SELECT [Order].Id, Shipper.CompanyName, [Order].OrderDate
-- FROM [Order]
-- JOIN Shipper on [Order].OrderDate < '2012-08-09';
-- -- 
-- SELECT DISTINCT [Order].Id , Shipper.CompanyName, [Order].OrderDate
-- FROM [Order]
-- JOIN Shipper on [Order].OrderDate < '2012-08-09';
-- --
-- SELECT DISTINCT [Order].Id , Shipper.CompanyName, [Order].OrderDate
-- FROM [Order]
-- JOIN Shipper 
-- WHERE [Order].OrderDate < '2012-08-09';
-- -- 
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT P.ProductName, P.QuantityPerUnit, P.UnitsOnOrder, O.Id
FROM Product AS P
JOIN [Order] AS O ON O.Id = 10251
ORDER BY P.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT DISTINCT O.Id as [Order], C.CompanyName, E.LastName
FROM [Order] AS O
JOIN Customer AS C, Employee AS E ;