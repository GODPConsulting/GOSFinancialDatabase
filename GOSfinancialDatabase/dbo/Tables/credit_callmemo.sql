CREATE TABLE [dbo].[credit_callmemo] (
    [CallMemoId]        INT           IDENTITY (1, 1) NOT NULL,
    [LoanApplicationId] INT           NOT NULL,
    [StaffId]           INT           NOT NULL,
    [CallMemoTypeId]    INT           NOT NULL,
    [MemoDate]          DATETIME      NOT NULL,
    [NextCallDate]      DATETIME      NULL,
    [Purpose]           VARCHAR (MAX) COLLATE Latin1_General_CI_AS NOT NULL,
    [Discussion]        VARCHAR (MAX) COLLATE Latin1_General_CI_AS NULL,
    [Summary]           VARCHAR (MAX) COLLATE Latin1_General_CI_AS NULL,
    [Action]            VARCHAR (500) COLLATE Latin1_General_CI_AS NOT NULL,
    [Recommendation]    VARCHAR (500) COLLATE Latin1_General_CI_AS NULL,
    [Active]            BIT           NULL,
    [Deleted]           BIT           NULL,
    [CreatedBy]         VARCHAR (50)  NULL,
    [CreatedOn]         DATETIME      NULL,
    [UpdatedBy]         VARCHAR (50)  NULL,
    [UpdatedOn]         DATETIME      NULL,
    CONSTRAINT [PK_credit_callmemo] PRIMARY KEY CLUSTERED ([CallMemoId] ASC),
    CONSTRAINT [FK_credit_callmemo_cor_staff] FOREIGN KEY ([StaffId]) REFERENCES [dbo].[cor_staff] ([StaffId]),
    CONSTRAINT [FK_credit_callmemo_credit_callmemotype] FOREIGN KEY ([CallMemoTypeId]) REFERENCES [dbo].[credit_callmemotype] ([CallMemoTypeId]),
    CONSTRAINT [FK_credit_callmemo_credit_loanapplication] FOREIGN KEY ([LoanApplicationId]) REFERENCES [dbo].[credit_loanapplication] ([LoanApplicationId])
);

