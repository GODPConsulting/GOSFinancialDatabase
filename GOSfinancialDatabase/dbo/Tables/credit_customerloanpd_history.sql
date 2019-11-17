CREATE TABLE [dbo].[credit_customerloanpd_history] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [CreditRiskAttribute] VARCHAR (250) NULL,
    [CustomerName]        VARCHAR (250) NULL,
    [LoanReferenceNumber] VARCHAR (250) NULL,
    [ProductCode]         VARCHAR (250) NULL,
    [ProductName]         VARCHAR (250) NULL,
    [AttributeField]      VARCHAR (250) NULL,
    [Score]               FLOAT (53)    NULL,
    [Coefficients]        FLOAT (53)    NULL,
    [AverageCoefficients] FLOAT (53)    NULL,
    [PD]                  FLOAT (53)    NULL,
    [Date]                DATE          NULL,
    [Year]                INT           NULL,
    CONSTRAINT [PK_credit.CustomerLoanPD_history] PRIMARY KEY CLUSTERED ([Id] ASC)
);

