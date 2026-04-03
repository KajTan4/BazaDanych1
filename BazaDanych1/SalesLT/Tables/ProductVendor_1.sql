CREATE TABLE [SalesLT].[ProductVendor] (
    [ProductID]       INT   NOT NULL,
    [VendorID]        INT   NOT NULL,
    [StandardPrice]   MONEY NOT NULL,
    [AverageLeadTime] INT   NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [IDX_ProductVendor_ProductID_VendorID]
    ON [SalesLT].[ProductVendor]([ProductID] ASC, [VendorID] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ProductVendor_VendorID_StandardPrice_AverageLeadTime]
    ON [SalesLT].[ProductVendor]([VendorID] ASC)
    INCLUDE([StandardPrice], [AverageLeadTime]);


GO
CREATE NONCLUSTERED INDEX [IDX_ProductVendor_StandardPrice]
    ON [SalesLT].[ProductVendor]([StandardPrice] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ProductVendor_AverageLeadTime]
    ON [SalesLT].[ProductVendor]([AverageLeadTime] ASC);

