CREATE TABLE [dbo].[cor_branch] (
    [BranchId]   INT           IDENTITY (1, 1) NOT NULL,
    [BranchCode] VARCHAR (10)  NOT NULL,
    [BranchName] VARCHAR (250) NOT NULL,
    [Address]    VARCHAR (250) NOT NULL,
    [CompanyId]  INT           NOT NULL,
    [Active]     BIT           NULL,
    [Deleted]    BIT           NULL,
    [CreatedBy]  VARCHAR (50)  NULL,
    [CreatedOn]  DATETIME      NULL,
    [UpdatedBy]  VARCHAR (50)  NULL,
    [UpdatedOn]  DATETIME      NULL,
    CONSTRAINT [PK_cor_branch] PRIMARY KEY CLUSTERED ([BranchId] ASC),
    CONSTRAINT [FK_cor_branch_cor_company] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[cor_company] ([CompanyId])
);

