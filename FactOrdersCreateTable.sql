USE [MyDb]
GO

/****** Object:  Table [dbo].[FactOrders]    Script Date: 10/7/2016 7:18:22 PM ******/
	-- SQL SERVER 2016 and up
	--DROP TABLE IF EXISTS [dbo].[FactOrders] 
IF (OBJECT_ID('FactOrders', 'U') IS NOT NULL)
	DROP TABLE [dbo].[FactOrders] 
GO

/****** Object:  Table [dbo].[FactOrders]    Script Date: 10/7/2016 7:18:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactOrders](
	[OrderID] [int] NOT NULL,
	[CustomerID] [varchar](5) NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[Freight] NUMERIC (10,2) NULL
) ON [PRIMARY]

GO
/*
begin tran
	insert into FactOrders
select [OrderID], 	[CustomerID],
	[EmployeeID] ,
	[OrderDate] ,
	[RequiredDate],
	[ShippedDate],
	[ShipVia] ,
	[Freight]
	from Northwind..Orders
	where OrderID between 10248 and 10500;


	select * from Northwind..Orders

rollback;
commit;
*/