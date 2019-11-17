CREATE TABLE [dbo].[credit_loanstaging] (
    [LoanStagingId]   INT        IDENTITY (1, 1) NOT NULL,
    [ProbationPeriod] INT        NOT NULL,
    [From]            INT        NOT NULL,
    [To]              INT        NOT NULL,
    [Active]          BIT        NULL,
    [Deleted]         BIT        NULL,
    [CreatedBy]       NCHAR (50) NULL,
    [CreatedOn]       DATETIME   NULL,
    [UpdatedBy]       NCHAR (50) NULL,
    [UpdatedOn]       DATETIME   NULL,
    CONSTRAINT [PK_credit_loanstaging] PRIMARY KEY CLUSTERED ([LoanStagingId] ASC)
);

