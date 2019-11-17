CREATE TABLE [dbo].[credit_weightedriskscore] (
    [WeightedRiskScoreId]   INT             IDENTITY (1, 1) NOT NULL,
    [CreditRiskAttributeId] INT             NULL,
    [FeildName]             VARCHAR (50)    NULL,
    [UseAtOrigination]      BIT             CONSTRAINT [DF_credit_weightedriskscore_UseAtOrigination] DEFAULT ((0)) NULL,
    [ProductId]             INT             NULL,
    [CustomerTypeId]        INT             NULL,
    [ProductMaxWeight]      DECIMAL (18, 4) NULL,
    [WeightedScore]         DECIMAL (18, 4) NULL,
    [Active]                BIT             NULL,
    [Deleted]               BIT             NULL,
    [CreatedBy]             VARCHAR (50)    NULL,
    [CreatedOn]             DATETIME        NULL,
    [UpdatedBy]             VARCHAR (50)    NULL,
    [UpdatedOn]             DATETIME        NULL,
    CONSTRAINT [PK_credit_weightedriskscore] PRIMARY KEY CLUSTERED ([WeightedRiskScoreId] ASC),
    CONSTRAINT [FK_credit_weightedriskscore_credit_creditriskattribute] FOREIGN KEY ([CreditRiskAttributeId]) REFERENCES [dbo].[credit_creditriskattribute] ([CreditRiskAttributeId]),
    CONSTRAINT [FK_credit_weightedriskscore_credit_product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[credit_product] ([ProductId])
);

