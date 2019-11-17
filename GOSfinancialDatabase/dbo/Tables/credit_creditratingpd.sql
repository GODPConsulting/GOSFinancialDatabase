CREATE TABLE [dbo].[credit_creditratingpd] (
    [CreditRiskRatingPDId] INT             IDENTITY (1, 1) NOT NULL,
    [PD]                   DECIMAL (18, 4) NOT NULL,
    [MinRangeScore]        DECIMAL (18, 4) NOT NULL,
    [MaxRangeScore]        DECIMAL (18, 4) NOT NULL,
    [Description]          VARCHAR (1000)  NULL,
    [Active]               BIT             NULL,
    [Deleted]              BIT             NULL,
    [CreatedBy]            VARCHAR (50)    NULL,
    [CreatedOn]            DATETIME        NULL,
    [UpdatedBy]            VARCHAR (50)    NULL,
    [UpdatedOn]            DATETIME        NULL,
    CONSTRAINT [PK_credit_creditratingpd] PRIMARY KEY CLUSTERED ([CreditRiskRatingPDId] ASC)
);

