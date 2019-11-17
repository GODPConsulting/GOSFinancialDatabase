CREATE TABLE [dbo].[credit_loan_repayment] (
    [LoanRepaymentId] INT   IDENTITY (1, 1) NOT NULL,
    [LoanId]          INT   NOT NULL,
    [Date]            DATE  NOT NULL,
    [InterestAmount]  MONEY NOT NULL,
    [PrincipalAmount] MONEY NOT NULL,
    [ClosingBalance]  MONEY NOT NULL,
    CONSTRAINT [PK_credit_loan_repayment] PRIMARY KEY CLUSTERED ([LoanRepaymentId] ASC)
);

