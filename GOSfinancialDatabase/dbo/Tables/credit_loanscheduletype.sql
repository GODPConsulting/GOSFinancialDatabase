CREATE TABLE [dbo].[credit_loanscheduletype] (
    [LoanScheduleTypeId]     INT           IDENTITY (1, 1) NOT NULL,
    [LoanScheduleTypeName]   VARCHAR (250) NOT NULL,
    [LoanScheduleCategoryId] INT           NOT NULL,
    [Active]                 BIT           NULL,
    [Deleted]                BIT           NULL,
    [CreatedBy]              VARCHAR (50)  NULL,
    [CreatedOn]              DATETIME      NULL,
    [UpdatedBy]              VARCHAR (50)  NULL,
    [UpdatedOn]              DATETIME      NULL,
    CONSTRAINT [PK_credit_loanscheduletype] PRIMARY KEY CLUSTERED ([LoanScheduleTypeId] ASC),
    CONSTRAINT [FK_credit_loanscheduletype_credit_loanschedulecategory] FOREIGN KEY ([LoanScheduleCategoryId]) REFERENCES [dbo].[credit_loanschedulecategory] ([LoanScheduleCategoryId])
);

