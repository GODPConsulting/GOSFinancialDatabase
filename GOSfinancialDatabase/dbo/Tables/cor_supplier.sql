CREATE TABLE [dbo].[cor_supplier] (
    [SupplierId]       INT           IDENTITY (1, 1) NOT NULL,
    [SupplierTypeId]   INT           NOT NULL,
    [Name]             VARCHAR (250) NOT NULL,
    [Passport]         VARCHAR (50)  NULL,
    [Address]          VARCHAR (550) NOT NULL,
    [Email]            VARCHAR (50)  NOT NULL,
    [PhoneNo]          VARCHAR (50)  NOT NULL,
    [RegistrationNo]   VARCHAR (50)  NULL,
    [CountryId]        INT           NOT NULL,
    [ApprovalStatusId] INT           NOT NULL,
    [Active]           BIT           NULL,
    [Deleted]          BIT           NULL,
    [CreatedBy]        VARCHAR (50)  NULL,
    [CreatedOn]        DATETIME      NULL,
    [UpdatedBy]        VARCHAR (50)  NULL,
    [UpdatedOn]        DATETIME      NULL,
    CONSTRAINT [PK_cor_supplier] PRIMARY KEY CLUSTERED ([SupplierId] ASC),
    CONSTRAINT [FK_cor_supplier_cor_approvalstatus] FOREIGN KEY ([ApprovalStatusId]) REFERENCES [dbo].[cor_approvalstatus] ([ApprovalStatusId]),
    CONSTRAINT [FK_cor_supplier_cor_suppliertype] FOREIGN KEY ([SupplierTypeId]) REFERENCES [dbo].[cor_suppliertype] ([SupplierTypeId])
);

