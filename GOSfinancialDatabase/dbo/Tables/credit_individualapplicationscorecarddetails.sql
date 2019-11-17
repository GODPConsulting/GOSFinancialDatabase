CREATE TABLE [dbo].[credit_individualapplicationscorecarddetails] (
    [ApplicationCreditScoreId] INT             IDENTITY (1, 1) NOT NULL,
    [LoanApplicationId]        INT             NOT NULL,
    [CustomerId]               INT             NOT NULL,
    [ProductId]                INT             NOT NULL,
    [AttributeField]           VARCHAR (50)    NOT NULL,
    [Score]                    DECIMAL (18, 4) NOT NULL,
    [Active]                   BIT             NULL,
    [Deleted]                  BIT             NULL,
    [CreatedBy]                VARCHAR (50)    NULL,
    [CreatedOn]                DATETIME        NULL,
    [UpdatedBy]                VARCHAR (50)    NULL,
    [UpdatedOn]                DATETIME        NULL,
    CONSTRAINT [PK_credit_individualapplicationscorecarddetails] PRIMARY KEY CLUSTERED ([ApplicationCreditScoreId] ASC),
    CONSTRAINT [FK_credit_individualapplicationscorecarddetails_credit_loanapplication] FOREIGN KEY ([LoanApplicationId]) REFERENCES [dbo].[credit_loanapplication] ([LoanApplicationId]),
    CONSTRAINT [FK_credit_individualapplicationscorecarddetails_credit_loancustomer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[credit_loancustomer] ([CustomerId]),
    CONSTRAINT [FK_credit_individualapplicationscorecarddetails_credit_product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[credit_product] ([ProductId])
);

