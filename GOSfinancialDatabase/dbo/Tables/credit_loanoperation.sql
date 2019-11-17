CREATE TABLE [dbo].[credit_loanoperation] (
    [LoanOperationId]   TINYINT       NOT NULL,
    [LoanOperationName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_credit_loanoperation] PRIMARY KEY CLUSTERED ([LoanOperationId] ASC)
);

