-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.ProductName, Category.CategoryName
FROM Product
JOIN Category ON Product.CategoryId = Category.Id; 


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, OrderDate, Shipper.CompanyName
  FROM [Order]
  JOIN [Shipper] ON Shipper.Id = [Order].ShipVia
  WHERE OrderDate < '2012-08-09'
  ORDER by OrderDate;
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT OrderDetail.Quantity, Product.ProductName
  FROM [OrderDetail] 
  join [Product]
      on Product.id = OrderDetail.ProductId
      where OrderDetail.OrderId = '10251'
      order by Product.ProductName;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT distinct OrderDetail.OrderId, Customer.CompanyName, Employee.LastName
  FROM [OrderDetail]
  JOIN [Order]
      on OrderDetail.OrderId = [Order].id
  JOIN [Customer] 
      on [Order].CustomerId = Customer.id
  JOIN [Employee] 
      on [Order].EmployeeId = Employee.id;
