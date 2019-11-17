CREATE TABLE [dbo].[cor_chartofaccount] (
    [ChartOfAccountId] INT           IDENTITY (1, 1) NOT NULL,
    [AccountCode]      VARCHAR (50)  NOT NULL,
    [AccountName]      VARCHAR (250) NOT NULL,
    [AccountTypeId]    INT           NOT NULL,
    [CompanyId]        INT           NOT NULL,
    [GLClassId]        INT           NULL,
    [BranchId]         INT           NOT NULL,
    [SubGLId]          INT           NOT NULL,
    [Active]           BIT           NULL,
    [Deleted]          BIT           NULL,
    [CreatedBy]        VARCHAR (50)  NULL,
    [CreatedOn]        DATETIME      NULL,
    [UpdatedBy]        VARCHAR (50)  NULL,
    [UpdatedOn]        DATETIME      NULL,
    CONSTRAINT [PK_cor_chartofaccount] PRIMARY KEY CLUSTERED ([ChartOfAccountId] ASC),
    CONSTRAINT [FK_cor_chartofaccount_cor_accounttype] FOREIGN KEY ([AccountTypeId]) REFERENCES [dbo].[cor_accounttype] ([AccountTypeId]),
    CONSTRAINT [FK_cor_chartofaccount_cor_branch] FOREIGN KEY ([BranchId]) REFERENCES [dbo].[cor_branch] ([BranchId]),
    CONSTRAINT [FK_cor_chartofaccount_cor_company] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[cor_company] ([CompanyId])
);

