CREATE TABLE [dbo].[credit_loanschedulecategory] (
    [LoanScheduleCategoryId]   INT           IDENTITY (1, 1) NOT NULL,
    [LoanScheduleCategoryName] VARCHAR (250) NOT NULL,
    [Active]                   BIT           NULL,
    [Deleted]                  BIT           NULL,
    [CreatedBy]                VARCHAR (50)  NULL,
    [CreatedOn]                DATETIME      NULL,
    [UpdatedBy]                VARCHAR (50)  NULL,
    [UpdatedOn]                DATETIME      NULL,
    CONSTRAINT [PK_credit_loanschedulecategory] PRIMARY KEY CLUSTERED ([LoanScheduleCategoryId] ASC)
);

