CREATE TABLE [dbo].[cor_title] (
    [TitleId]   INT           IDENTITY (1, 1) NOT NULL,
    [Title]     VARCHAR (100) NOT NULL,
    [Active]    BIT           NULL,
    [Deleted]   BIT           NULL,
    [CreatedBy] VARCHAR (50)  NULL,
    [CreatedOn] DATETIME      NULL,
    [UpdatedBy] VARCHAR (50)  NULL,
    [UpdatedOn] DATETIME      NULL,
    CONSTRAINT [PK_cor_title] PRIMARY KEY CLUSTERED ([TitleId] ASC)
);

