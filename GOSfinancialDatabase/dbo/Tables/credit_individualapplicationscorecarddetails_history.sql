CREATE TABLE [dbo].[credit_individualapplicationscorecarddetails_history] (
    [ApplicationCreditScoreId] INT             IDENTITY (1, 1) NOT NULL,
    [LoanAmount]               MONEY           NOT NULL,
    [CustomerName]             VARCHAR (250)   NULL,
    [LoanReferenceNumber]      VARCHAR (250)   NULL,
    [ProductCode]              VARCHAR (250)   NULL,
    [ProductName]              VARCHAR (250)   NULL,
    [EffectiveDate]            DATETIME        NULL,
    [MaturityDate]             DATETIME        NULL,
    [AttributeField]           VARCHAR (50)    NOT NULL,
    [Score]                    DECIMAL (18, 4) NOT NULL,
    [Active]                   BIT             NULL,
    [Deleted]                  BIT             NULL,
    [CreatedBy]                VARCHAR (50)    NULL,
    [CreatedOn]                DATETIME        NULL,
    [UpdatedBy]                VARCHAR (50)    NULL,
    [UpdatedOn]                DATETIME        NULL,
    CONSTRAINT [PK_credit_individualapplicationscorecarddetails_history] PRIMARY KEY CLUSTERED ([ApplicationCreditScoreId] ASC)
);

