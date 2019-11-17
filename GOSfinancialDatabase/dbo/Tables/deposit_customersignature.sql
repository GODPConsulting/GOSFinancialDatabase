CREATE TABLE [dbo].[deposit_customersignature] (
    [SignatureId]  INT             IDENTITY (1, 1) NOT NULL,
    [CustomerId]   INT             NOT NULL,
    [SignatoryId]  INT             NOT NULL,
    [Name]         VARCHAR (50)    NULL,
    [SignatureImg] VARBINARY (MAX) NULL,
    [Active]       BIT             NULL,
    [Deleted]      BIT             NULL,
    [CreatedBy]    VARCHAR (50)    NULL,
    [CreatedOn]    DATETIME        NULL,
    [UpdatedBy]    VARCHAR (50)    NULL,
    [UpdatedOn]    DATETIME        NULL,
    CONSTRAINT [PK_deposit_customersignature] PRIMARY KEY CLUSTERED ([SignatureId] ASC),
    CONSTRAINT [FK_deposit_customersignature_deposit_accountopening] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[deposit_accountopening] ([CustomerId]),
    CONSTRAINT [FK_deposit_customersignature_deposit_customersignatory] FOREIGN KEY ([SignatoryId]) REFERENCES [dbo].[deposit_customersignatory] ([SignatoryId])
);

