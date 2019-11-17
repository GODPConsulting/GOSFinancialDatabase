CREATE TABLE [dbo].[cor_supplierdocument] (
    [SupplierDocumentId] INT           IDENTITY (1, 1) NOT NULL,
    [SupplierId]         INT           NOT NULL,
    [Name]               VARCHAR (250) NOT NULL,
    [Document]           IMAGE         NULL,
    [Active]             BIT           NULL,
    [Deleted]            BIT           NULL,
    [CreatedBy]          VARCHAR (50)  NULL,
    [CreatedOn]          DATETIME      NULL,
    [UpdatedBy]          VARCHAR (50)  NULL,
    [UpdatedOn]          DATETIME      NULL,
    CONSTRAINT [PK_cor_supplierdocument] PRIMARY KEY CLUSTERED ([SupplierDocumentId] ASC),
    CONSTRAINT [FK_cor_supplierdocument_cor_supplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[cor_supplier] ([SupplierId])
);

