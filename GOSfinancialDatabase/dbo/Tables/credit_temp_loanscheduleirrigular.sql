CREATE TABLE [dbo].[credit_temp_loanscheduleirrigular] (
    [LoanScheduleIrrigularId] TINYINT      NOT NULL,
    [LoanId]                  INT          NOT NULL,
    [PaymentDate]             DATE         NOT NULL,
    [PaymentAmount]           MONEY        NOT NULL,
    [StaffId]                 INT          NULL,
    [Active]                  BIT          NOT NULL,
    [Deleted]                 BIT          NULL,
    [CreatedBy]               VARCHAR (50) NULL,
    [CreatedOn]               DATETIME     NULL,
    [UpdatedBy]               VARCHAR (50) NULL,
    [UpdatedOn]               DATETIME     NULL,
    CONSTRAINT [PK_credit_temp_loanscheduleirrigular] PRIMARY KEY CLUSTERED ([LoanScheduleIrrigularId] ASC)
);

