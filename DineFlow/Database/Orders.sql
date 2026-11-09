IF OBJECT_ID(N'dbo.Orders', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.Orders
    (
        OrderID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Orders PRIMARY KEY,
        OrderNumber VARCHAR(20) NOT NULL CONSTRAINT UQ_Orders_OrderNumber UNIQUE,
        CustomerName NVARCHAR(100) NOT NULL,
        MobileNumber VARCHAR(10) NOT NULL,
        TableNumber INT NOT NULL,
        TotalAmount DECIMAL(10,2) NOT NULL CONSTRAINT CK_Orders_TotalAmount CHECK (TotalAmount >= 0),
        Status VARCHAR(20) NOT NULL CONSTRAINT DF_Orders_Status DEFAULT ('Received'),
        CreatedAt DATETIME NOT NULL CONSTRAINT DF_Orders_CreatedAt DEFAULT (GETDATE())
    );
END;
GO

IF OBJECT_ID(N'dbo.OrderItems', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.OrderItems
    (
        OrderItemID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_OrderItems PRIMARY KEY,
        OrderID INT NOT NULL,
        MenuItemID INT NOT NULL,
        ItemName NVARCHAR(150) NOT NULL,
        UnitPrice DECIMAL(10,2) NOT NULL CONSTRAINT CK_OrderItems_UnitPrice CHECK (UnitPrice >= 0),
        Quantity INT NOT NULL CONSTRAINT CK_OrderItems_Quantity CHECK (Quantity > 0),
        LineTotal DECIMAL(10,2) NOT NULL CONSTRAINT CK_OrderItems_LineTotal CHECK (LineTotal >= 0),
        CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (OrderID) REFERENCES dbo.Orders(OrderID),
        CONSTRAINT FK_OrderItems_MenuItems FOREIGN KEY (MenuItemID) REFERENCES dbo.MenuItems(MenuItemId)
    );
END;
GO
