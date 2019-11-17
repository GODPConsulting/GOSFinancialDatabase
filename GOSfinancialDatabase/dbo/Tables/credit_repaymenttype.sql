CREATE TABLE [dbo].[credit_repaymenttype] (
    [RepaymentTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [RepaymentTypeName] VARCHAR (250) NOT NULL,
    [Active]            BIT           NULL,
    [Deleted]           BIT           NULL,
    [CreatedBy]         VARCHAR (50)  NULL,
    [CreatedOn]         DATETIME      NULL,
    [UpdatedBy]         VARCHAR (50)  NULL,
    [UpdatedOn]         DATETIME      NULL,
    CONSTRAINT [PK_credit_repaymenttype] PRIMARY KEY CLUSTERED ([RepaymentTypeId] ASC)
);

