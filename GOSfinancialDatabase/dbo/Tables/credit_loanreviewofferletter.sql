CREATE TABLE [dbo].[credit_loanreviewofferletter] (
    [LoanreviewOfferLetterId] INT             IDENTITY (1, 1) NOT NULL,
    [LoanReviewApplicationId] INT             NOT NULL,
    [ReportStatus]            VARCHAR (50)    NULL,
    [SupportDocument]         VARBINARY (MAX) NULL,
    [Active]                  BIT             NULL,
    [Deleted]                 BIT             NULL,
    [CreatedBy]               VARCHAR (50)    NULL,
    [CreatedOn]               DATETIME        NULL,
    [UpdatedBy]               VARCHAR (50)    NULL,
    [UpdatedOn]               DATETIME        NULL,
    CONSTRAINT [PK_credit_loanreviewofferletter] PRIMARY KEY CLUSTERED ([LoanreviewOfferLetterId] ASC)
);

