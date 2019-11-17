CREATE TABLE [dbo].[cor_userroleactivity] (
    [UserRoleActivityId] INT          IDENTITY (1, 1) NOT NULL,
    [UserRoleId]         INT          NOT NULL,
    [ActivityId]         INT          NOT NULL,
    [CanEdit]            BIT          CONSTRAINT [DF_Table_1_CANEDIT] DEFAULT ((0)) NULL,
    [CanAdd]             BIT          CONSTRAINT [DF_Table_1_CANADD] DEFAULT ((0)) NULL,
    [CanView]            BIT          CONSTRAINT [DF_Table_1_CANVIEW] DEFAULT ((0)) NULL,
    [CanDelete]          BIT          CONSTRAINT [DF_Table_1_CANDELETE] DEFAULT ((0)) NULL,
    [CanApprove]         BIT          CONSTRAINT [DF_Table_1_CANAPPROVE] DEFAULT ((0)) NULL,
    [Active]             BIT          NULL,
    [Deleted]            BIT          NULL,
    [CreatedBy]          VARCHAR (50) NULL,
    [CreatedOn]          DATETIME     NULL,
    [UpdatedBy]          VARCHAR (50) NULL,
    [UpdatedOn]          DATETIME     NULL,
    CONSTRAINT [PK_cor_applicationuserroleactivity] PRIMARY KEY CLUSTERED ([UserRoleActivityId] ASC),
    CONSTRAINT [FK_cor_userroleactivity_cor_activity] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[cor_activity] ([ActivityId]),
    CONSTRAINT [FK_cor_userroleactivity_cor_userrole] FOREIGN KEY ([UserRoleId]) REFERENCES [dbo].[cor_userrole] ([UserRoleId])
);

