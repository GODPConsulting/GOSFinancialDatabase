CREATE TABLE [dbo].[credit_loancustomerfscaptiongroup] (
    [FSCaptionGroupId]   INT          IDENTITY (1, 1) NOT NULL,
    [FSCaptionGroupName] VARCHAR (50) COLLATE Latin1_General_CI_AS NOT NULL,
    [Active]             BIT          NULL,
    [Deleted]            BIT          NULL,
    [CreatedBy]          VARCHAR (50) NULL,
    [CreatedOn]          DATETIME     NULL,
    [UpdatedBy]          VARCHAR (50) NULL,
    [UpdatedOn]          DATETIME     NULL,
    CONSTRAINT [PK_credit_loancustomerfscaptiongroup] PRIMARY KEY CLUSTERED ([FSCaptionGroupId] ASC)
);

