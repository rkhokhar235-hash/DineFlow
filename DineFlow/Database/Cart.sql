IF OBJECT_ID(N'dbo.cart_tbl', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.cart_tbl
    (
        Cart_Id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_cart_tbl PRIMARY KEY,
        Cart_User_Id NVARCHAR(10) NOT NULL,
        Cart_Session_Id NVARCHAR(100) NOT NULL,
        Cart_Customer_Name NVARCHAR(100) NOT NULL,
        Cart_Table_Number INT NOT NULL,
        Cart_Prod_Id INT NOT NULL,
        Quantity INT NOT NULL CONSTRAINT CK_cart_tbl_Quantity CHECK (Quantity > 0),
        Total DECIMAL(10,2) NOT NULL CONSTRAINT CK_cart_tbl_Total CHECK (Total >= 0),
        Added_Date DATETIME NOT NULL CONSTRAINT DF_cart_tbl_Added_Date DEFAULT (GETDATE()),
        CONSTRAINT FK_cart_tbl_MenuItems FOREIGN KEY (Cart_Prod_Id) REFERENCES dbo.MenuItems(MenuItemId)
    );
END;
GO

IF COL_LENGTH(N'dbo.cart_tbl', N'Cart_Session_Id') IS NULL
BEGIN
    ALTER TABLE dbo.cart_tbl ADD Cart_Session_Id NVARCHAR(100) NULL;
END;
GO
