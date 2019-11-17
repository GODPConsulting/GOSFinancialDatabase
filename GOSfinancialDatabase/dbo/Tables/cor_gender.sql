CREATE TABLE [dbo].[cor_gender] (
    [GenderId]  INT          IDENTITY (1, 1) NOT NULL,
    [Gender]    VARCHAR (50) NOT NULL,
    [Active]    BIT          NULL,
    [Deleted]   BIT          NULL,
    [CreatedBy] VARCHAR (50) NULL,
    [CreatedOn] DATETIME     NULL,
    [UpdatedBy] VARCHAR (50) NULL,
    [UpdatedOn] DATETIME     NULL,
    CONSTRAINT [PK_cor_gender] PRIMARY KEY CLUSTERED ([GenderId] ASC)
);

