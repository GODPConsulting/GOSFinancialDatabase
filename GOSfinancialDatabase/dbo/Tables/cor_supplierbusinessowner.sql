CREATE TABLE [dbo].[cor_supplierbusinessowner] (
    [SupplierBusinessOwnerId] INT           IDENTITY (1, 1) NOT NULL,
    [SupplierId]              INT           NOT NULL,
    [Name]                    VARCHAR (250) NOT NULL,
    [Address]                 VARCHAR (550) NOT NULL,
    [Email]                   VARCHAR (50)  NOT NULL,
    [PhoneNo]                 VARCHAR (50)  NOT NULL,
    [DateOfBirth]             DATE          NULL,
    [Signature]               IMAGE         NULL,
    [Active]                  BIT           NULL,
    [Deleted]                 BIT           NULL,
    [CreatedBy]               VARCHAR (50)  NULL,
    [CreatedOn]               DATETIME      NULL,
    [UpdatedBy]               VARCHAR (50)  NULL,
    [UpdatedOn]               DATETIME      NULL,
    CONSTRAINT [PK_cor_supplierbusinessowner] PRIMARY KEY CLUSTERED ([SupplierBusinessOwnerId] ASC),
    CONSTRAINT [FK_cor_supplierbusinessowner_cor_supplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[cor_supplier] ([SupplierId])
);

