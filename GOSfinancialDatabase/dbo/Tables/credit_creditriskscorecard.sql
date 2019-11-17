CREATE TABLE [dbo].[credit_creditriskscorecard] (
    [CreditRiskScoreCardId] INT             IDENTITY (1, 1) NOT NULL,
    [CreditRiskAttributeId] INT             NOT NULL,
    [CustomerTypeId]        INT             NOT NULL,
    [Value]                 VARCHAR (250)   NOT NULL,
    [Score]                 DECIMAL (18, 4) NOT NULL,
    [Active]                BIT             NULL,
    [Deleted]               BIT             NULL,
    [CreatedBy]             VARCHAR (50)    NULL,
    [CreatedOn]             DATETIME        NULL,
    [UpdatedBy]             VARCHAR (50)    NULL,
    [UpdatedOn]             DATETIME        NULL,
    CONSTRAINT [PK_credit_creditriskscorecard] PRIMARY KEY CLUSTERED ([CreditRiskScoreCardId] ASC)
);

