CREATE TABLE [dbo].[cor_supplierauthorization] (
    [SupplierAuthorizationId] INT           IDENTITY (1, 1) NOT NULL,
    [SupplierId]              INT           NOT NULL,
    [Name]                    VARCHAR (250) NOT NULL,
    [Address]                 VARCHAR (550) NOT NULL,
    [Email]                   VARCHAR (50)  NOT NULL,
    [PhoneNo]                 VARCHAR (50)  NOT NULL,
    [Signature]               IMAGE         NULL,
    [Active]                  BIT           NULL,
    [Deleted]                 BIT           NULL,
    [CreatedBy]               VARCHAR (50)  NULL,
    [CreatedOn]               DATETIME      NULL,
    [UpdatedBy]               VARCHAR (50)  NULL,
    [UpdatedOn]               DATETIME      NULL,
    CONSTRAINT [PK_cor_supplierauthorization] PRIMARY KEY CLUSTERED ([SupplierAuthorizationId] ASC),
    CONSTRAINT [FK_cor_supplierauthorization_cor_supplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[cor_supplier] ([SupplierId]),
    CONSTRAINT [FK_cor_supplierauthorization_cor_supplierauthorization] FOREIGN KEY ([SupplierAuthorizationId]) REFERENCES [dbo].[cor_supplierauthorization] ([SupplierAuthorizationId])
);

