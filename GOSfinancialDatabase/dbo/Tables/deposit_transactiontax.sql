CREATE TABLE [dbo].[deposit_transactiontax] (
    [TransactionTaxId]  INT             IDENTITY (1, 1) NOT NULL,
    [Name]              VARCHAR (50)    NULL,
    [FixedOrPercentage] VARCHAR (50)    NULL,
    [Amount/Percentage] DECIMAL (18, 2) NULL,
    [Description]       VARCHAR (500)   NULL,
    [Active]            BIT             NULL,
    [Deleted]           BIT             NULL,
    [CreatedBy]         VARCHAR (50)    NULL,
    [CreatedOn]         DATETIME        NULL,
    [UpdatedBy]         VARCHAR (50)    NULL,
    [UpdatedOn]         DATETIME        NULL,
    CONSTRAINT [PK_deposit_transactiontax] PRIMARY KEY CLUSTERED ([TransactionTaxId] ASC)
);

