CREATE TABLE [dbo].[cor_workflow] (
    [WorkflowId]       INT           IDENTITY (1, 1) NOT NULL,
    [WorkflowName]     VARCHAR (250) NOT NULL,
    [OperationId]      INT           NOT NULL,
    [WorkflowAccessId] INT           NOT NULL,
    [ApprovalStatusId] INT           NOT NULL,
    [Active]           BIT           NULL,
    [Deleted]          BIT           NULL,
    [CreatedBy]        VARCHAR (50)  NULL,
    [CreatedOn]        DATETIME      NULL,
    [UpdatedBy]        VARCHAR (50)  NULL,
    [UpdatedOn]        DATETIME      NULL,
    CONSTRAINT [PK_WorkflowMapping] PRIMARY KEY CLUSTERED ([WorkflowId] ASC),
    CONSTRAINT [FK_cor_workflowmapping_cor_operation] FOREIGN KEY ([OperationId]) REFERENCES [dbo].[cor_operation] ([OperationId])
);

