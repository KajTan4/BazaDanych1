CREATE TABLE [SalesLT].[VendorPriceHistory] (
    [QuoteID]   BIGINT   NULL,
    [VendorID]  INT      NOT NULL,
    [ProductID] INT      NOT NULL,
    [Price]     MONEY    NOT NULL,
    [QuoteDate] DATETIME NOT NULL
);


GO
CREATE CLUSTERED INDEX [IDX_VendorPriceHistory_VendorID_ProductID]
    ON [SalesLT].[VendorPriceHistory]([VendorID] ASC, [ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_VendorPriceHistory_VendorID]
    ON [SalesLT].[VendorPriceHistory]([ProductID] ASC)
    INCLUDE([Price], [QuoteDate]);


GO
CREATE NONCLUSTERED INDEX [IDX_VendorPriceHistory_Price]
    ON [SalesLT].[VendorPriceHistory]([Price] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_VendorPriceHistory_QuoteDate]
    ON [SalesLT].[VendorPriceHistory]([QuoteDate] ASC);

