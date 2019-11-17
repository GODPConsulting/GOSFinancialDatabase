CREATE TABLE [dbo].[credit_loan_past_due] (
    [PastDueId]          INT           IDENTITY (1, 1) NOT NULL,
    [LoanId]             INT           NOT NULL,
    [ProductTypeId]      INT           NOT NULL,
    [Date]               DATE          NOT NULL,
    [TransactionTypeId]  INT           NOT NULL,
    [PastDueCode]        VARCHAR (50)  NOT NULL,
    [Parent_PastDueCode] VARCHAR (50)  NULL,
    [Description]        VARCHAR (800) NOT NULL,
    [DebitAmount]        MONEY         NOT NULL,
    [CreditAmount]       MONEY         NOT NULL,
    CONSTRAINT [PK_credit_loan_past_due] PRIMARY KEY CLUSTERED ([PastDueId] ASC)
);

