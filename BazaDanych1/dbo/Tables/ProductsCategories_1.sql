CREATE TABLE [dbo].[ProductsCategories] (
    [Name]          [dbo].[Name]  NOT NULL,
    [ProductNumber] NVARCHAR (25) NOT NULL,
    [CategoryName]  [dbo].[Name]  NOT NULL,
    [OwnerID]       INT           NOT NULL
);

