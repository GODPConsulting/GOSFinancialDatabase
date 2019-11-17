CREATE TABLE [dbo].[credit_loancustomerfscaption] (
    [FSCaptionId]      INT            IDENTITY (1, 1) NOT NULL,
    [FSCaptionName]    VARCHAR (1000) COLLATE Latin1_General_CI_AS NOT NULL,
    [FSCaptionGroupId] INT            NULL,
    [Active]           BIT            NULL,
    [Deleted]          BIT            NULL,
    [CreatedBy]        VARCHAR (50)   NULL,
    [CreatedOn]        DATETIME       NULL,
    [UpdatedBy]        VARCHAR (50)   NULL,
    [UpdatedOn]        DATETIME       NULL,
    CONSTRAINT [PK_credit_loancustomerfscaption] PRIMARY KEY CLUSTERED ([FSCaptionId] ASC),
    CONSTRAINT [FK_credit_loancustomerfscaption_credit_loancustomerfscaptiongroup] FOREIGN KEY ([FSCaptionGroupId]) REFERENCES [dbo].[credit_loancustomerfscaptiongroup] ([FSCaptionGroupId])
);

