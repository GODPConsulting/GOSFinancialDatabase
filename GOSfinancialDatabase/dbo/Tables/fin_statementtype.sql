CREATE TABLE [dbo].[fin_statementtype] (
    [StatementTypeId] INT           IDENTITY (1, 1) NOT NULL,
    [StatementName]   VARCHAR (250) NOT NULL,
    [StatementAlias]  VARCHAR (250) NOT NULL,
    [Active]          BIT           NULL,
    [Deleted]         BIT           NULL,
    [CreatedBy]       VARCHAR (50)  NULL,
    [CreatedOn]       DATETIME      NULL,
    [UpdatedBy]       VARCHAR (50)  NULL,
    [UpdatedOn]       DATETIME      NULL,
    CONSTRAINT [PK_fin_statementtype] PRIMARY KEY CLUSTERED ([StatementTypeId] ASC)
);

