CREATE TABLE [dbo].[cor_workflowdetailsaccess] (
    [WorkflowDetailsAccessId] INT          IDENTITY (1, 1) NOT NULL,
    [WorkflowDetailId]        INT          NOT NULL,
    [OfficeAccessId]          INT          NOT NULL,
    [Active]                  BIT          NULL,
    [Deleted]                 BIT          NULL,
    [CreatedBy]               VARCHAR (50) NULL,
    [CreatedOn]               DATETIME     NULL,
    [UpdatedBy]               VARCHAR (50) NULL,
    [UpdatedOn]               DATETIME     NULL,
    CONSTRAINT [PK_cor_workflowdetailsaccess] PRIMARY KEY CLUSTERED ([WorkflowDetailsAccessId] ASC),
    CONSTRAINT [FK_cor_workflowdetailsaccess_cor_workflowdetails] FOREIGN KEY ([WorkflowDetailId]) REFERENCES [dbo].[cor_workflowdetails] ([WorkflowDetailId]) ON DELETE CASCADE
);

