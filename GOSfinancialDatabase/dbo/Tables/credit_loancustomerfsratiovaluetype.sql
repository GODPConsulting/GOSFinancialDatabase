CREATE TABLE [dbo].[credit_loancustomerfsratiovaluetype] (
    [ValueTypeId]   INT          IDENTITY (1, 1) NOT NULL,
    [ValueTypeName] VARCHAR (50) COLLATE Latin1_General_CI_AS NULL,
    [Active]        BIT          NULL,
    [Deleted]       BIT          NULL,
    [CreatedBy]     VARCHAR (50) NULL,
    [CreatedOn]     DATETIME     NULL,
    [UpdatedBy]     VARCHAR (50) NULL,
    [UpdatedOn]     DATETIME     NULL,
    CONSTRAINT [PK_credit_loancustomerfsratiovaluetype] PRIMARY KEY CLUSTERED ([ValueTypeId] ASC)
);

