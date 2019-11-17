CREATE TABLE [dbo].[cor_department] (
    [DepartmentId]   INT           IDENTITY (1, 1) NOT NULL,
    [DepartmentCode] VARCHAR (10)  NOT NULL,
    [DepartmentName] VARCHAR (250) NOT NULL,
    [BranchId]       INT           NOT NULL,
    [Active]         BIT           NULL,
    [Deleted]        BIT           NULL,
    [CreatedBy]      VARCHAR (50)  NULL,
    [CreatedOn]      DATETIME      NULL,
    [UpdatedBy]      VARCHAR (50)  NULL,
    [UpdatedOn]      DATETIME      NULL,
    CONSTRAINT [PK_cor_department] PRIMARY KEY CLUSTERED ([DepartmentId] ASC),
    CONSTRAINT [FK_cor_department_cor_branch] FOREIGN KEY ([BranchId]) REFERENCES [dbo].[cor_branch] ([BranchId])
);

