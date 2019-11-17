CREATE TABLE [dbo].[credit_loanapplicationcollateral] (
    [LoanApplicationCollateralId] INT          IDENTITY (1, 1) NOT NULL,
    [CollateralCustomerId]        INT          NULL,
    [LoanApplicationId]           INT          NULL,
    [ActualCollateralValue]       MONEY        NOT NULL,
    [Active]                      BIT          NULL,
    [Deleted]                     BIT          NULL,
    [CreatedBy]                   VARCHAR (50) NULL,
    [CreatedOn]                   DATETIME     NULL,
    [UpdatedBy]                   VARCHAR (50) NULL,
    [UpdatedOn]                   DATETIME     NULL,
    CONSTRAINT [PK_credit_loanapplicationcollateral] PRIMARY KEY CLUSTERED ([LoanApplicationCollateralId] ASC),
    CONSTRAINT [FK_credit_loanapplicationcollateral_credit_collateralcustomer] FOREIGN KEY ([CollateralCustomerId]) REFERENCES [dbo].[credit_collateralcustomer] ([CollateralCustomerId]),
    CONSTRAINT [FK_credit_loanapplicationcollateral_credit_loanapplication] FOREIGN KEY ([LoanApplicationId]) REFERENCES [dbo].[credit_loanapplication] ([LoanApplicationId])
);

