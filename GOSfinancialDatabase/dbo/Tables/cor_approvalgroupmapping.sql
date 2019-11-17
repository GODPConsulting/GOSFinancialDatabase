CREATE TABLE [dbo].[cor_approvalgroupmapping] (
    [ApprovalGroupMappingId] INT          IDENTITY (1, 1) NOT NULL,
    [OperationId]            INT          NOT NULL,
    [GroupId]                INT          NOT NULL,
    [Position]               INT          NOT NULL,
    [ApprovalStatusId]       INT          NOT NULL,
    [Active]                 BIT          NULL,
    [Deleted]                BIT          NULL,
    [CreatedBy]              VARCHAR (50) NULL,
    [CreatedOn]              DATETIME     NULL,
    [UpdatedBy]              VARCHAR (50) NULL,
    [UpdatedOn]              DATETIME     NULL,
    CONSTRAINT [PK_cor_approvalgroupmapping] PRIMARY KEY CLUSTERED ([ApprovalGroupMappingId] ASC),
    CONSTRAINT [FK_cor_approvalgroupmapping_cor_approvalgroup] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[cor_approvalgroup] ([ApprovalGroupId]),
    CONSTRAINT [FK_cor_approvalgroupmapping_cor_operation] FOREIGN KEY ([OperationId]) REFERENCES [dbo].[cor_operation] ([OperationId])
);

