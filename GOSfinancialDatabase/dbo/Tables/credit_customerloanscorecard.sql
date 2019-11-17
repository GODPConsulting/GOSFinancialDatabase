CREATE TABLE [dbo].[credit_customerloanscorecard] (
    [Id]                     INT             IDENTITY (1, 1) NOT NULL,
    [CreditRiskAttribute]    VARCHAR (250)   NULL,
    [CustomerId]             INT             NOT NULL,
    [LoanApplicationId]      INT             NOT NULL,
    [AttributeField]         VARCHAR (250)   NOT NULL,
    [Score]                  DECIMAL (18, 4) NOT NULL,
    [AttributeWeightedScore] DECIMAL (18, 4) NOT NULL,
    [AverageWeightedScore]   DECIMAL (18, 4) NOT NULL,
    [Date]                   DATE            NULL,
    CONSTRAINT [PK_credit.CustomerLoanScoreCard] PRIMARY KEY CLUSTERED ([Id] ASC)
);

