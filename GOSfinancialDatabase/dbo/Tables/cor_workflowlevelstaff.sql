CREATE TABLE [dbo].[cor_workflowlevelstaff] (
    [WorkflowLevelStaffId] INT          IDENTITY (1, 1) NOT NULL,
    [StaffId]              INT          NOT NULL,
    [WorkflowGroupId]      INT          NOT NULL,
    [WorkflowLevelId]      INT          NOT NULL,
    [Active]               BIT          NULL,
    [Deleted]              BIT          NULL,
    [CreatedBy]            VARCHAR (50) NULL,
    [CreatedOn]            DATETIME     NULL,
    [UpdatedBy]            VARCHAR (50) NULL,
    [UpdatedOn]            DATETIME     NULL,
    CONSTRAINT [PK_cor_workflowlevelstaff] PRIMARY KEY CLUSTERED ([WorkflowLevelStaffId] ASC),
    CONSTRAINT [FK_cor_workflowlevelstaff_cor_staff] FOREIGN KEY ([StaffId]) REFERENCES [dbo].[cor_staff] ([StaffId]),
    CONSTRAINT [FK_cor_workflowlevelstaff_cor_workflowgroup] FOREIGN KEY ([WorkflowGroupId]) REFERENCES [dbo].[cor_workflowgroup] ([WorkflowGroupId]),
    CONSTRAINT [FK_cor_workflowlevelstaff_cor_workflowlevel] FOREIGN KEY ([WorkflowLevelId]) REFERENCES [dbo].[cor_workflowlevel] ([WorkflowLevelId])
);

