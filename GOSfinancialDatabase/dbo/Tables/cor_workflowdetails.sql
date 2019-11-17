CREATE TABLE [dbo].[cor_workflowdetails] (
    [WorkflowDetailId] INT          IDENTITY (1, 1) NOT NULL,
    [WorkflowId]       INT          NOT NULL,
    [WorkflowGroupId]  INT          NOT NULL,
    [WorkflowLevelId]  INT          NOT NULL,
    [AccessId]         INT          NOT NULL,
    [OfficeAccessIds]  VARCHAR (50) NULL,
    [Position]         INT          NOT NULL,
    [Active]           BIT          NULL,
    [Deleted]          BIT          NULL,
    [CreatedBy]        VARCHAR (50) NULL,
    [CreatedOn]        DATETIME     NULL,
    [UpdatedBy]        VARCHAR (50) NULL,
    [UpdatedOn]        DATETIME     NULL,
    CONSTRAINT [PK_cor_workflowdetails] PRIMARY KEY CLUSTERED ([WorkflowDetailId] ASC),
    CONSTRAINT [FK_cor_workflowdetails_cor_workflow] FOREIGN KEY ([WorkflowId]) REFERENCES [dbo].[cor_workflow] ([WorkflowId])
);

