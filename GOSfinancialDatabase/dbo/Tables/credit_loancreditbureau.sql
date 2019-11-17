CREATE TABLE [dbo].[credit_loancreditbureau] (
    [LoanCreditBureauId] INT             IDENTITY (1, 1) NOT NULL,
    [LoanApplicationId]  INT             NOT NULL,
    [CreditBureauId]     INT             NOT NULL,
    [ChargeAmount]       DECIMAL (18)    NULL,
    [ReportStatus]       BIT             NULL,
    [SupportDocument]    VARBINARY (MAX) NULL,
    [Active]             BIT             NULL,
    [Deleted]            BIT             NULL,
    [CreatedBy]          VARCHAR (50)    NULL,
    [CreatedOn]          DATETIME        NULL,
    [UpdatedBy]          VARCHAR (50)    NULL,
    [UpdatedOn]          DATETIME        NULL,
    CONSTRAINT [PK_credit_loancreditbureau] PRIMARY KEY CLUSTERED ([LoanCreditBureauId] ASC),
    CONSTRAINT [FK_credit_loancreditbureau_credit_creditbureau] FOREIGN KEY ([CreditBureauId]) REFERENCES [dbo].[credit_creditbureau] ([CreditBureauId]),
    CONSTRAINT [FK_credit_loancreditbureau_credit_loanapplication] FOREIGN KEY ([LoanApplicationId]) REFERENCES [dbo].[credit_loanapplication] ([LoanApplicationId])
);

