use Northwind
-- The basic syntax for reading data from a single table  
SELECT ProductID, ProductName--, Price, ProductDescription  
    FROM Products;

select p.UnitsInStock, p.Discontinued , p.ProductID, p.ProductName,
p.UnitPrice * 1.15 as TaxedUnitPrice
 from Products as p
 where p.UnitsInStock <= 10;
--select 'Hello world';
--GO


SELECT        Products.ProductName, Products.UnitPrice, Categories.CategoryName, [Order Details].OrderID, [Order Details].Quantity, SUBSTRING(Categories.CategoryName, 5, 5) AS Prueba
INTO              MyDb.dbo.Prueba
FROM            Products INNER JOIN
                         Categories ON Products.CategoryID = Categories.CategoryID INNER JOIN
                         [Order Details] ON Products.ProductID = [Order Details].ProductID
WHERE        ([Order Details].Quantity > 5) AND (Categories.CategoryName LIKE N'B%')


declare @x as numeric(10,5) = 45.223
declare @table as table (x int, y varchar(100));

insert into @table select distinct Quantity, 
convert (varchar(100),ProductName)
from MyDb.dbo.Prueba;

select count (*) from @table;
select * from @table;

insert into @table 


