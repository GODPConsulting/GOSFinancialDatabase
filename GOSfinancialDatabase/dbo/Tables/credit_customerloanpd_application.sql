CREATE TABLE [dbo].[credit_customerloanpd_application] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [CreditRiskAttribute] VARCHAR (250) NULL,
    [CustomerId]          INT           NULL,
    [LoanApplicationId ]  INT           NULL,
    [ProductId]           INT           NULL,
    [AttributeField]      VARCHAR (250) NULL,
    [Score]               FLOAT (53)    NULL,
    [Coefficients]        FLOAT (53)    NULL,
    [AverageCoefficients] FLOAT (53)    NULL,
    [PD]                  FLOAT (53)    NULL,
    [Date]                DATE          NULL,
    [Year]                INT           NULL,
    CONSTRAINT [PK_credit.CustomerLoanpd_application] PRIMARY KEY CLUSTERED ([Id] ASC)
);

