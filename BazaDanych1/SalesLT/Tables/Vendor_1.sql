CREATE TABLE [SalesLT].[Vendor] (
    [VendorID]      INT            IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (100) NOT NULL,
    [AccountNumber] NVARCHAR (20)  NOT NULL,
    [CreditRating]  TINYINT        NOT NULL,
    [ActiveFlag]    BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([VendorID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_Vendor_AccountNumber]
    ON [SalesLT].[Vendor]([AccountNumber] ASC)
    INCLUDE([CreditRating], [ActiveFlag]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_Vendor_Name_AccountNumber]
    ON [SalesLT].[Vendor]([AccountNumber] ASC)
    INCLUDE([Name], [ActiveFlag]) WHERE ([ActiveFlag]=(1));

