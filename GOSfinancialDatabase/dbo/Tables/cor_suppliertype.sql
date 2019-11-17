CREATE TABLE [dbo].[cor_suppliertype] (
    [SupplierTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [SupplierTypeName] VARCHAR (250) NOT NULL,
    [Active]           BIT           NULL,
    [Deleted]          BIT           NULL,
    [CreatedBy]        VARCHAR (50)  NULL,
    [CreatedOn]        DATETIME      NULL,
    [UpdatedBy]        VARCHAR (50)  NULL,
    [UpdatedOn]        DATETIME      NULL,
    CONSTRAINT [PK_cor_suppliertype] PRIMARY KEY CLUSTERED ([SupplierTypeId] ASC)
);

