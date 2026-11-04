IF OBJECT_ID(N'dbo.MenuCategories', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.MenuCategories
    (
        CategoryId INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_MenuCategories PRIMARY KEY,
        CategoryName NVARCHAR(100) NOT NULL,
        IsActive BIT NOT NULL CONSTRAINT DF_MenuCategories_IsActive DEFAULT (1),
        CreatedAt DATETIME2 NOT NULL CONSTRAINT DF_MenuCategories_CreatedAt DEFAULT (SYSUTCDATETIME()),
        CONSTRAINT UQ_MenuCategories_CategoryName UNIQUE (CategoryName)
    );
END;
GO
IF OBJECT_ID(N'dbo.MenuItems', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.MenuItems
    (
        MenuItemId INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_MenuItems PRIMARY KEY,
        ItemName NVARCHAR(150) NOT NULL,
        Description NVARCHAR(1000) NULL,
        Price DECIMAL(10,2) NOT NULL CONSTRAINT CK_MenuItems_Price CHECK (Price >= 0),
        CategoryId INT NOT NULL,
        ImagePath NVARCHAR(300) NULL,
        Rating DECIMAL(2,1) NULL CONSTRAINT CK_MenuItems_Rating CHECK (Rating IS NULL OR (Rating >= 0 AND Rating <= 5)),
        IsAvailable BIT NOT NULL CONSTRAINT DF_MenuItems_IsAvailable DEFAULT (1),
        IsDeleted BIT NOT NULL CONSTRAINT DF_MenuItems_IsDeleted DEFAULT (0),
        CreatedAt DATETIME2 NOT NULL CONSTRAINT DF_MenuItems_CreatedAt DEFAULT (SYSUTCDATETIME()),
        UpdatedAt DATETIME2 NOT NULL CONSTRAINT DF_MenuItems_UpdatedAt DEFAULT (SYSUTCDATETIME()),
        CONSTRAINT FK_MenuItems_MenuCategories FOREIGN KEY (CategoryId) REFERENCES dbo.MenuCategories(CategoryId)
    );
END;
GO
INSERT INTO dbo.MenuCategories (CategoryName)
SELECT source.CategoryName
FROM (VALUES (N'Starters'), (N'Main course'), (N'Grill & tandoor'), (N'Desserts'), (N'Beverages')) source(CategoryName)
WHERE NOT EXISTS (SELECT 1 FROM dbo.MenuCategories existing WHERE existing.CategoryName = source.CategoryName);
GO
