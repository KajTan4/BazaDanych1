CREATE TABLE [SalesLT].[ShipmentTrackingEvents] (
    [EventID]      BIGINT        NULL,
    [SalesOrderID] INT           NOT NULL,
    [EventDate]    DATETIME      NOT NULL,
    [Location]     VARCHAR (100) NULL,
    [Status]       VARCHAR (50)  NULL,
    [Notes]        VARCHAR (200) NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [IDX_ShipmentTrackingEvents_SalesOrderID_EventDate_Status]
    ON [SalesLT].[ShipmentTrackingEvents]([SalesOrderID] ASC, [EventDate] ASC, [Status] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ShipmentTrackingEvents_EventDate]
    ON [SalesLT].[ShipmentTrackingEvents]([EventDate] ASC);


GO
CREATE NONCLUSTERED INDEX [IDX_ShipmentTrackingEvents_Status]
    ON [SalesLT].[ShipmentTrackingEvents]([Status] ASC);

