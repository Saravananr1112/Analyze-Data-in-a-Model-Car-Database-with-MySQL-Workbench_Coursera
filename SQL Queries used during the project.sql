USE mintclassics;

-- Total products count
SELECT COUNT(productCode)
FROM products

-- checking if there are products that stored in multiple warehouse
SELECT productCode,COUNT(warehouseCode)
FROM products
GROUP BY productCode
HAVING COUNT(warehouseCode)>1

-- Warehouse Stock Inventory Summary
SELECT products.warehouseCode,warehouses.warehouseName,warehouses.warehousePctCap,COUNT(products.productCode) totalProduct,SUM(products.quantityInStock)totalStock,totalordered,(SUM(products.quantityInStock)-totalOrdered)StockinWarehouse
FROM products
LEFT JOIN warehouses
ON products.warehouseCode=warehouses.warehouseCode
LEFT JOIN (SELECT products.warehouseCode,SUM(orderdetails.quantityOrdered)totalordered
FROM orderdetails,products
WHERE products.productCode=orderdetails.productCode
GROUP BY products.warehouseCode) AS W
ON products.warehouseCode=W.warehouseCode
GROUP BY products.warehouseCode,warehouses.warehouseName
ORDER BY warehouseCode

-- Warehouse Stock Inventory Category wise
SELECT products.warehouseCode,products.productLine,warehouses.warehouseName,warehouses.warehousePctCap,COUNT(products.productCode) totalProduct,SUM(products.quantityInStock)totalStock,totalOrdered,(SUM(products.quantityInStock)-totalOrdered) AS InventoryStock
FROM products
LEFT JOIN warehouses
ON products.warehouseCode=warehouses.warehouseCode
LEFT JOIN (SELECT products.productLine,SUM(orderdetails.quantityOrdered)totalOrdered
FROM products
LEFT JOIN orderdetails
ON products.productCode=orderdetails.productCode
GROUP BY products.productLine) AS P
ON products.productLine=P.productLine
GROUP BY products.warehouseCode,products.productLine,warehouses.warehouseName
ORDER BY warehouseCode ASC, productLine ASC,totalStock DESC

-- Warehouse Stock Inventory Product wise
CREATE TABLE StockInvProwise
SELECT products.warehouseCode,products.productName,warehouses.warehouseName,warehouses.warehousePctCap,COUNT(products.productCode) totalProduct,SUM(products.quantityInStock)totalStock,totalOrdered,(SUM(products.quantityInStock)-totalOrdered) AS InventoryStock,CASE WHEN (SUM(products.quantityInStock)-totalOrdered)<0 THEN "OutofStock" WHEN(totalOrdered)is null THEN "ToDiscontinue" WHEN(SUM(products.quantityInStock)/totalOrdered)>1.5 THEN "OverStock" WHEN(SUM(products.quantityInStock)/totalOrdered)<1.5 THEN "FlowinStock" END AS InventoryStatus
FROM products
LEFT JOIN warehouses
ON products.warehouseCode=warehouses.warehouseCode
LEFT JOIN (SELECT products.productName,SUM(orderdetails.quantityOrdered)totalOrdered
FROM products
LEFT JOIN orderdetails
ON products.productCode=orderdetails.productCode
GROUP BY products.productName) AS P
ON products.productName=P.productName
GROUP BY products.warehouseCode,products.productName,warehouses.warehouseName
ORDER BY warehouseCode ASC, productName ASC,InventoryStatus ASC,totalStock DESC

-- Checking if there are products that have not been ordered
SELECT *
FROM StockInvProwise
WHERE totalOrdered is null

-- Product count Inventory status wise
SELECT warehouseCode,warehouseName,InventoryStatus,COUNT(totalProduct)Productcount
FROM StockInvProwise
GROUP BY InventoryStatus,warehouseCode,warehouseName

-- Employee sales summary
CREATE TABLE EmployeeDetails
SELECT employees.employeeNumber,CONCAT(employees.firstName," ",employees.lastName)employeeName,employees.jobTitle,employees.officeCode,offices.addressLine1 address,offices.city,offices.country,COUNT(customers.customerNumber) NoofCustomers
FROM employees
LEFT JOIN offices
ON employees.officeCode=offices.officeCode
LEFT JOIN customers
ON employees.employeeNumber=customers.salesRepEmployeeNumber
GROUP BY employees.employeeNumber

-- Employee who didn't made any sales
SELECT *
FROM EmployeeDetails
WHERE jobTitle="Sales Rep" AND NoofCustomers<1

-- Verifying company’s credit details 
SELECT customers.customerNumber,customers.customerName,customers.creditLimit,SUM(payments.amount) AS totalPayments,(SUM(payments.amount) - customers.creditLimit) AS creditLimitDifference
FROM customers
LEFT JOIN payments
ON customers.customerNumber=payments.customerNumber
GROUP BY customers.customerNumber,customers.creditLimit
HAVING SUM(payments.amount) < customers.creditLimit
ORDER BY creditLimitDifference

-- Shipment Details 
CREATE TEMPORARY TABLE ShipmentDetails
SELECT orderNumber,orderDate,requiredDate,shippedDate,status,datediff(requiredDate,shippedDate)Noofdays,comments
FROM orders
ORDER BY Noofdays DESC

-- Checking whether there are any products that shipped delay
SELECT *
FROM ShipmentDetails
WHERE NoofDays<0
ORDER BY Noofdays DESC