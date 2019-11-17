CREATE TABLE [dbo].[credit_loantransactiontype] (
    [LoanTransactionTypeId]   TINYINT       NOT NULL,
    [LoanTransactionTypeName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_credit_loantransactiontype] PRIMARY KEY CLUSTERED ([LoanTransactionTypeId] ASC)
);

