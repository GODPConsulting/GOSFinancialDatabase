CREATE TABLE [dbo].[cor_approvalgroup] (
    [ApprovalGroupId]   INT           IDENTITY (1, 1) NOT NULL,
    [ApprovalGroupName] VARCHAR (250) NOT NULL,
    [CompanyId]         INT           NOT NULL,
    [Active]            BIT           NULL,
    [Deleted]           BIT           NULL,
    [CreatedBy]         VARCHAR (50)  NULL,
    [CreatedOn]         DATETIME      NULL,
    [UpdatedBy]         VARCHAR (50)  NULL,
    [UpdatedOn]         DATETIME      NULL,
    CONSTRAINT [PK_cor_approvalgroup] PRIMARY KEY CLUSTERED ([ApprovalGroupId] ASC),
    CONSTRAINT [FK_cor_approvalgroup_cor_company] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[cor_company] ([CompanyId])
);

