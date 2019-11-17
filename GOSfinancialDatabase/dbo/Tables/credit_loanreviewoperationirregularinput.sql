CREATE TABLE [dbo].[credit_loanreviewoperationirregularinput] (
    [IrregularScheduleInputId] INT          IDENTITY (1, 1) NOT NULL,
    [LoanReviewOperationId]    INT          NOT NULL,
    [PaymentDate]              DATE         NOT NULL,
    [PaymentAmount]            MONEY        NOT NULL,
    [Active]                   BIT          NULL,
    [Deleted]                  BIT          NULL,
    [CreatedBy]                VARCHAR (50) NULL,
    [CreatedOn]                DATETIME     NULL,
    [UpdatedBy]                VARCHAR (50) NULL,
    [UpdatedOn]                DATETIME     NULL,
    CONSTRAINT [PK_credit_loanreviewoperationirregularinput] PRIMARY KEY CLUSTERED ([IrregularScheduleInputId] ASC),
    CONSTRAINT [FK_credit_loanreviewoperationirregularinput_credit_loanreviewoperation] FOREIGN KEY ([LoanReviewOperationId]) REFERENCES [dbo].[credit_loanreviewoperation] ([LoanReviewOperationId])
);

