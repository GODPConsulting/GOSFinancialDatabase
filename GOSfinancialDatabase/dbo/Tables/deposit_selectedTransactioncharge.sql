CREATE TABLE [dbo].[deposit_selectedTransactioncharge] (
    [SelectedTransChargeId] INT          IDENTITY (1, 1) NOT NULL,
    [TransactionChargeId]   INT          NULL,
    [AccountId]             INT          NULL,
    [Active]                BIT          NULL,
    [Deleted]               BIT          NULL,
    [CreatedBy]             VARCHAR (50) NULL,
    [CreatedOn]             DATETIME     NULL,
    [UpdatedBy]             VARCHAR (50) NULL,
    [UpdatedOn]             DATETIME     NULL,
    CONSTRAINT [PK_deposit_selectedTransactioncharge] PRIMARY KEY CLUSTERED ([SelectedTransChargeId] ASC),
    CONSTRAINT [FK_deposit_selectedTransactioncharge_deposit_transactioncharge] FOREIGN KEY ([TransactionChargeId]) REFERENCES [dbo].[deposit_transactioncharge] ([TransactionChargeId])
);

