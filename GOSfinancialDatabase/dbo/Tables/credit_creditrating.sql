CREATE TABLE [dbo].[credit_creditrating] (
    [CreditRiskRatingId] INT             IDENTITY (1, 1) NOT NULL,
    [Rate]               VARCHAR (50)    NOT NULL,
    [MinRange]           DECIMAL (18, 4) NOT NULL,
    [MaxRange]           DECIMAL (18, 4) NOT NULL,
    [AdvicedRange]       DECIMAL (18, 4) NULL,
    [RateDescription]    VARCHAR (1000)  NULL,
    [Active]             BIT             NULL,
    [Deleted]            BIT             NULL,
    [CreatedBy]          VARCHAR (50)    NULL,
    [CreatedOn]          DATETIME        NULL,
    [UpdatedBy]          VARCHAR (50)    NULL,
    [UpdatedOn]          DATETIME        NULL,
    CONSTRAINT [PK_credit_creditrating] PRIMARY KEY CLUSTERED ([CreditRiskRatingId] ASC)
);

