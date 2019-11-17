CREATE TABLE [dbo].[credit_loancustomerfsratiodivisortype] (
    [DivisorTypeId]   INT          IDENTITY (1, 1) NOT NULL,
    [DivisorTypeName] VARCHAR (50) COLLATE Latin1_General_CI_AS NOT NULL,
    [Active]          BIT          NULL,
    [Deleted]         BIT          NULL,
    [CreatedBy]       VARCHAR (50) NULL,
    [CreatedOn]       DATETIME     NULL,
    [UpdatedBy]       VARCHAR (50) NULL,
    [UpdatedOn]       DATETIME     NULL,
    CONSTRAINT [PK_credit_loancustomerfsratiodivisortype] PRIMARY KEY CLUSTERED ([DivisorTypeId] ASC)
);

