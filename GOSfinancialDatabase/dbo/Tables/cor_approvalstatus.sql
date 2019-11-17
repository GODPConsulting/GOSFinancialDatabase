CREATE TABLE [dbo].[cor_approvalstatus] (
    [ApprovalStatusId]   INT           NOT NULL,
    [ApprovalStatusName] VARCHAR (250) NOT NULL,
    [Active]             BIT           NULL,
    [Deleted]            BIT           NULL,
    [CreatedBy]          VARCHAR (50)  NULL,
    [CreatedOn]          DATETIME      NULL,
    [UpdatedBy]          VARCHAR (50)  NULL,
    [UpdatedOn]          DATETIME      NULL,
    CONSTRAINT [PK_cor_approvalstatus] PRIMARY KEY CLUSTERED ([ApprovalStatusId] ASC)
);

