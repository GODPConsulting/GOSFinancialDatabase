CREATE TABLE [dbo].[cor_userroleadditionalactivity] (
    [UserRoleAdditionalActivityId] INT          IDENTITY (1, 1) NOT NULL,
    [UserAccountId]                INT          NOT NULL,
    [ActivityId]                   INT          NOT NULL,
    [CanEdit]                      BIT          CONSTRAINT [DF_cor_applicationuserroleadditionalactivity_CanEdit] DEFAULT ((0)) NULL,
    [CanAdd]                       BIT          CONSTRAINT [DF_cor_applicationuserroleadditionalactivity_CanAdd] DEFAULT ((0)) NULL,
    [CanView]                      BIT          CONSTRAINT [DF_cor_applicationuserroleadditionalactivity_CanView] DEFAULT ((0)) NULL,
    [CanDelete]                    BIT          CONSTRAINT [DF_cor_applicationuserroleadditionalactivity_CanDelete] DEFAULT ((0)) NULL,
    [CanApprove]                   BIT          CONSTRAINT [DF_cor_applicationuserroleadditionalactivity_CanApprove] DEFAULT ((0)) NULL,
    [Active]                       BIT          NULL,
    [Deleted]                      BIT          NULL,
    [CreatedBy]                    VARCHAR (50) NULL,
    [CreatedOn]                    DATETIME     NULL,
    [UpdatedBy]                    VARCHAR (50) NULL,
    [UpdatedOn]                    DATETIME     NULL,
    CONSTRAINT [PK_cor_applicationuserroleadditionalactivity] PRIMARY KEY CLUSTERED ([UserRoleAdditionalActivityId] ASC),
    CONSTRAINT [FK_cor_userroleadditionalactivity_cor_activity] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[cor_activity] ([ActivityId]),
    CONSTRAINT [FK_cor_userroleadditionalactivity_cor_useraccount] FOREIGN KEY ([UserAccountId]) REFERENCES [dbo].[cor_useraccount] ([UserAccountId])
);

