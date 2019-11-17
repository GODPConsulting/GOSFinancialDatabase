CREATE TABLE [dbo].[cor_workflowaccess] (
    [WorkflowCompanyAccessId] INT          IDENTITY (1, 1) NOT NULL,
    [WorkflowId]              INT          NOT NULL,
    [OperationId]             INT          NOT NULL,
    [OfficeAccessId]          INT          NOT NULL,
    [Active]                  BIT          NULL,
    [Deleted]                 BIT          NULL,
    [CreatedBy]               VARCHAR (50) NULL,
    [CreatedOn]               DATETIME     NULL,
    [UpdatedBy]               VARCHAR (50) NULL,
    [UpdatedOn]               DATETIME     NULL,
    CONSTRAINT [PK_cor_workflowaccess] PRIMARY KEY CLUSTERED ([WorkflowCompanyAccessId] ASC),
    CONSTRAINT [FK_cor_workflowaccess_cor_operation] FOREIGN KEY ([OperationId]) REFERENCES [dbo].[cor_operation] ([OperationId]),
    CONSTRAINT [FK_cor_workflowaccess_cor_workflow] FOREIGN KEY ([WorkflowId]) REFERENCES [dbo].[cor_workflow] ([WorkflowId])
);

