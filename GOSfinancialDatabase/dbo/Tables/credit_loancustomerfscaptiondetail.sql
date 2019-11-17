CREATE TABLE [dbo].[credit_loancustomerfscaptiondetail] (
    [FSDetailId]  INT          IDENTITY (1, 1) NOT NULL,
    [CustomerId]  INT          NOT NULL,
    [FSCaptionId] INT          NOT NULL,
    [FSDate]      DATE         NOT NULL,
    [Amount]      MONEY        CONSTRAINT [DF_Table_1_AMOUNT] DEFAULT ((0)) NOT NULL,
    [Active]      BIT          NULL,
    [Deleted]     BIT          NULL,
    [CreatedBy]   VARCHAR (50) NULL,
    [CreatedOn]   DATETIME     NULL,
    [UpdatedBy]   VARCHAR (50) NULL,
    [UpdatedOn]   DATETIME     NULL,
    CONSTRAINT [PK_credit_loancustomerfscaptiondetail] PRIMARY KEY CLUSTERED ([FSDetailId] ASC),
    CONSTRAINT [FK_credit_loancustomerfscaptiondetail_credit_loancustomer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[credit_loancustomer] ([CustomerId]),
    CONSTRAINT [FK_credit_loancustomerfscaptiondetail_credit_loancustomerfscaption] FOREIGN KEY ([FSCaptionId]) REFERENCES [dbo].[credit_loancustomerfscaption] ([FSCaptionId])
);

