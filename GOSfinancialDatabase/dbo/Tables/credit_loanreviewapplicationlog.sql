CREATE TABLE [dbo].[credit_loanreviewapplicationlog] (
    [LoanReviewApplicationLogId] INT          IDENTITY (1, 1) NOT NULL,
    [LoanReviewApplicationId]    INT          NOT NULL,
    [LoanId]                     INT          NOT NULL,
    [ApprovedTenor]              INT          NOT NULL,
    [ApprovedRate]               FLOAT (53)   NOT NULL,
    [ApprovedAmount]             MONEY        NOT NULL,
    [PrincipalFrequencyTypeId]   INT          NULL,
    [InterestFrequencyTypeId]    INT          NULL,
    [FirstPrincipalPaymentDate]  DATE         NULL,
    [FirstInterestPaymentDate]   DATE         NULL,
    [Active]                     BIT          NOT NULL,
    [Deleted]                    BIT          NULL,
    [CreatedBy]                  VARCHAR (50) NULL,
    [CreatedOn]                  DATETIME     NULL,
    [UpdatedBy]                  VARCHAR (50) NULL,
    [UpdatedOn]                  DATETIME     NULL,
    CONSTRAINT [PK_credit_loanreviewapplicationlog] PRIMARY KEY CLUSTERED ([LoanReviewApplicationLogId] ASC)
);

