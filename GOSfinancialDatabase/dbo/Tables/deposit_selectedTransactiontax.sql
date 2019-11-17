CREATE TABLE [dbo].[deposit_selectedTransactiontax] (
    [SelectedTransTaxId] INT          IDENTITY (1, 1) NOT NULL,
    [TransactionTaxId]   INT          NULL,
    [AccountId]          INT          NULL,
    [Active]             BIT          NULL,
    [Deleted]            BIT          NULL,
    [CreatedBy]          VARCHAR (50) NULL,
    [CreatedOn]          DATETIME     NULL,
    [UpdatedBy]          VARCHAR (50) NULL,
    [UpdatedOn]          DATETIME     NULL,
    CONSTRAINT [PK_deposit_selectedTransactiontax] PRIMARY KEY CLUSTERED ([SelectedTransTaxId] ASC),
    CONSTRAINT [FK_deposit_selectedTransactiontax_deposit_transactiontax] FOREIGN KEY ([TransactionTaxId]) REFERENCES [dbo].[deposit_transactiontax] ([TransactionTaxId])
);

