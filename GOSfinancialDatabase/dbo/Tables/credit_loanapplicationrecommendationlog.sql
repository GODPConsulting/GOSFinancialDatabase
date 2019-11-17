CREATE TABLE [dbo].[credit_loanapplicationrecommendationlog] (
    [LoanApplicationRecommendationLogId] INT          IDENTITY (1, 1) NOT NULL,
    [LoanApplicationId]                  INT          NOT NULL,
    [ApprovedProductId]                  INT          NOT NULL,
    [ApprovedTenor]                      INT          NOT NULL,
    [ApprovedRate]                       FLOAT (53)   NOT NULL,
    [ApprovedAmount]                     MONEY        NOT NULL,
    [Active]                             BIT          NOT NULL,
    [Deleted]                            BIT          NULL,
    [CreatedBy]                          VARCHAR (50) NULL,
    [CreatedOn]                          DATETIME     NULL,
    [UpdatedBy]                          VARCHAR (50) NULL,
    [UpdatedOn]                          DATETIME     NULL,
    CONSTRAINT [PK_credit_loanapplicationrecommendationlog] PRIMARY KEY CLUSTERED ([LoanApplicationRecommendationLogId] ASC),
    CONSTRAINT [FK_credit_loanapplicationrecommendationlog_credit_loanapplication] FOREIGN KEY ([LoanApplicationId]) REFERENCES [dbo].[credit_loanapplication] ([LoanApplicationId]),
    CONSTRAINT [FK_credit_loanapplicationrecommendationlog_credit_product] FOREIGN KEY ([ApprovedProductId]) REFERENCES [dbo].[credit_product] ([ProductId])
);

