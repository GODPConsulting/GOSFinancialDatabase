CREATE TABLE [dbo].[cor_userrole] (
    [UserRoleId] INT           IDENTITY (1, 1) NOT NULL,
    [RoleName]   VARCHAR (256) NOT NULL,
    [Active]     BIT           NULL,
    [Deleted]    BIT           NULL,
    [CreatedBy]  VARCHAR (50)  NULL,
    [CreatedOn]  DATETIME      NULL,
    [UpdatedBy]  VARCHAR (50)  NULL,
    [UpdatedOn]  DATETIME      NULL,
    CONSTRAINT [PK_cor_applicationuserrole] PRIMARY KEY CLUSTERED ([UserRoleId] ASC)
);

