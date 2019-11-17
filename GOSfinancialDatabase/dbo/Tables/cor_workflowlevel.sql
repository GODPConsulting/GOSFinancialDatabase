CREATE TABLE [dbo].[cor_workflowlevel] (
    [WorkflowLevelId]   INT             IDENTITY (1, 1) NOT NULL,
    [WorkflowLevelName] VARCHAR (250)   NOT NULL,
    [WorkflowGroupId]   INT             NOT NULL,
    [Position]          INT             NOT NULL,
    [UserRoleId]        INT             NULL,
    [RequiredLimit]     BIT             NOT NULL,
    [LimitAmount]       DECIMAL (18, 2) NULL,
    [CanModify]         BIT             CONSTRAINT [DF_cor_workflowlevel_CanModify] DEFAULT ((0)) NULL,
    [Active]            BIT             NULL,
    [Deleted]           BIT             NULL,
    [CreatedBy]         VARCHAR (50)    NULL,
    [CreatedOn]         DATETIME        NULL,
    [UpdatedBy]         VARCHAR (50)    NULL,
    [UpdatedOn]         DATETIME        NULL,
    CONSTRAINT [PK_cor_workflowlevel] PRIMARY KEY CLUSTERED ([WorkflowLevelId] ASC),
    CONSTRAINT [FK_cor_workflowlevel_cor_workflowgroup] FOREIGN KEY ([WorkflowGroupId]) REFERENCES [dbo].[cor_workflowgroup] ([WorkflowGroupId])
);

