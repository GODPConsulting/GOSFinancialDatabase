CREATE TABLE [dbo].[cor_accounttype] (
    [AccountTypeId]     INT           IDENTITY (1, 1) NOT NULL,
    [AccountTypeCode]   VARCHAR (50)  NOT NULL,
    [AccountTypeName]   VARCHAR (250) NOT NULL,
    [AccountCategoryId] INT           NOT NULL,
    [Active]            BIT           NULL,
    [Deleted]           BIT           NULL,
    [CreatedBy]         VARCHAR (50)  NULL,
    [CreatedOn]         DATETIME      NULL,
    [UpdatedBy]         VARCHAR (50)  NULL,
    [UpdatedOn]         DATETIME      NULL,
    CONSTRAINT [PK_cor_accounttype] PRIMARY KEY CLUSTERED ([AccountTypeId] ASC),
    CONSTRAINT [FK_cor_accounttype_cor_accountcategory] FOREIGN KEY ([AccountCategoryId]) REFERENCES [dbo].[cor_accountcategory] ([AccountCategoryId])
);

