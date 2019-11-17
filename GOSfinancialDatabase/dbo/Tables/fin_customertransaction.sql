CREATE TABLE [dbo].[fin_customertransaction] (
    [CustomerTransactionId] INT             IDENTITY (1, 1) NOT NULL,
    [TransactionCode]       VARCHAR (50)    NULL,
    [AccountNumber]         VARCHAR (50)    NULL,
    [Description]           VARCHAR (50)    NULL,
    [TransactionDate]       DATE            NULL,
    [ValueDate]             DATE            NULL,
    [Amount]                DECIMAL (18, 2) NULL,
    [DebitAmount]           DECIMAL (18, 2) NULL,
    [CreditAmount]          DECIMAL (18, 2) NULL,
    [AvailableBalance]      DECIMAL (18, 2) NULL,
    [Beneficiary]           VARCHAR (50)    NULL,
    [BatchNo]               VARCHAR (50)    NULL,
    [TransactionType]       VARCHAR (50)    NULL,
    CONSTRAINT [PK_fin_customertransaction] PRIMARY KEY CLUSTERED ([CustomerTransactionId] ASC)
);

