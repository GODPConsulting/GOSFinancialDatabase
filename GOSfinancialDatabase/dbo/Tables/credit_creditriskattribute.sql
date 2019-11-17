CREATE TABLE [dbo].[credit_creditriskattribute] (
    [CreditRiskAttributeId] INT           IDENTITY (1, 1) NOT NULL,
    [CreditRiskAttribute]   VARCHAR (500) NOT NULL,
    [CreditRiskCategoryId]  INT           NOT NULL,
    [AttributeField]        VARCHAR (50)  NOT NULL,
    [FriendlyName]          VARCHAR (500) NULL,
    [Active]                BIT           NULL,
    [Deleted]               BIT           NULL,
    [CreatedBy]             VARCHAR (50)  NULL,
    [CreatedOn]             DATETIME      NULL,
    [UpdatedBy]             VARCHAR (50)  NULL,
    [UpdatedOn]             DATETIME      NULL,
    CONSTRAINT [PK_credit_creditriskattribute] PRIMARY KEY CLUSTERED ([CreditRiskAttributeId] ASC)
);

