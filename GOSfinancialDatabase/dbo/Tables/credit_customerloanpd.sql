CREATE TABLE [dbo].[credit_customerloanpd] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [CreditRiskAttribute] VARCHAR (250) NULL,
    [CustomerId]          INT           NULL,
    [LoanApplicationId]   INT           NULL,
    [AttributeField]      VARCHAR (250) NULL,
    [Score]               FLOAT (53)    NULL,
    [Coefficients]        FLOAT (53)    NULL,
    [AverageCoefficients] FLOAT (53)    NULL,
    [Year]                INT           NULL,
    [Date]                DATE          NULL,
    CONSTRAINT [PK_credit.CustomerLoanPD] PRIMARY KEY CLUSTERED ([Id] ASC)
);

