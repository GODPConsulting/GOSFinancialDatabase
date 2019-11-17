CREATE TABLE [dbo].[credit_productfee] (
    [ProductFeeId]       INT          IDENTITY (1, 1) NOT NULL,
    [FeeId]              INT          NOT NULL,
    [ProductPaymentType] INT          NOT NULL,
    [ProductFeeType]     INT          NOT NULL,
    [ProductAmount]      FLOAT (53)   NOT NULL,
    [ProductId]          INT          NOT NULL,
    [Active]             BIT          NULL,
    [Deleted]            BIT          NULL,
    [CreatedBy]          VARCHAR (50) NULL,
    [CreatedOn]          DATETIME     NULL,
    [UpdatedBy]          VARCHAR (50) NULL,
    [UpdatedOn]          DATETIME     NULL,
    CONSTRAINT [PK_credit_productfee] PRIMARY KEY CLUSTERED ([ProductFeeId] ASC),
    CONSTRAINT [FK_credit_productfee_credit_fee] FOREIGN KEY ([FeeId]) REFERENCES [dbo].[credit_fee] ([FeeId]),
    CONSTRAINT [FK_credit_productfee_credit_product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[credit_product] ([ProductId]),
    CONSTRAINT [FK_credit_productfee_credit_repaymenttype] FOREIGN KEY ([ProductPaymentType]) REFERENCES [dbo].[credit_repaymenttype] ([RepaymentTypeId])
);

