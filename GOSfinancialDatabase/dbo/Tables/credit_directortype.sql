CREATE TABLE [dbo].[credit_directortype] (
    [DirectorTypeId] INT           NOT NULL,
    [Name]           VARCHAR (100) NOT NULL,
    [Active]         BIT           NULL,
    [Deleted]        BIT           NULL,
    [CreatedBy]      VARCHAR (50)  NULL,
    [CreatedOn]      DATETIME      NULL,
    [UpdatedBy]      VARCHAR (50)  NULL,
    [UpdatedOn]      DATETIME      NULL,
    CONSTRAINT [PK_credit_directortype] PRIMARY KEY CLUSTERED ([DirectorTypeId] ASC)
);

