CREATE TABLE [dbo].[cor_useraccess] (
    [UserAccessLevelId] INT          IDENTITY (1, 1) NOT NULL,
    [UserAccountId]     INT          NOT NULL,
    [AccessLevelId]     INT          NOT NULL,
    [Active]            BIT          NULL,
    [Deleted]           BIT          NULL,
    [CreatedBy]         VARCHAR (50) NULL,
    [CreatedOn]         DATETIME     NULL,
    [UpdatedBy]         VARCHAR (50) NULL,
    [UpdatedOn]         DATETIME     NULL,
    CONSTRAINT [PK_cor_useraccess] PRIMARY KEY CLUSTERED ([UserAccessLevelId] ASC),
    CONSTRAINT [FK_cor_useraccess_cor_useraccount] FOREIGN KEY ([UserAccountId]) REFERENCES [dbo].[cor_useraccount] ([UserAccountId])
);

