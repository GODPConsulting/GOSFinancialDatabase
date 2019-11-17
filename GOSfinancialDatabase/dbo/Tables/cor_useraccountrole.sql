CREATE TABLE [dbo].[cor_useraccountrole] (
    [UserAccountRoleId] INT          IDENTITY (1, 1) NOT NULL,
    [UserAccountId]     INT          NOT NULL,
    [UserRoleId]        INT          NOT NULL,
    [Active]            BIT          NULL,
    [Deleted]           BIT          NULL,
    [CreatedBy]         VARCHAR (50) NULL,
    [CreatedOn]         DATETIME     NULL,
    [UpdatedBy]         VARCHAR (50) NULL,
    [UpdatedOn]         DATETIME     NULL,
    CONSTRAINT [PK_cor_useraccountrole] PRIMARY KEY CLUSTERED ([UserAccountRoleId] ASC),
    CONSTRAINT [FK_cor_useraccountrole_cor_useraccount] FOREIGN KEY ([UserAccountId]) REFERENCES [dbo].[cor_useraccount] ([UserAccountId]),
    CONSTRAINT [FK_cor_useraccountrole_cor_userrole] FOREIGN KEY ([UserRoleId]) REFERENCES [dbo].[cor_userrole] ([UserRoleId])
);

