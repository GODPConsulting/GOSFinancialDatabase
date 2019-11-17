CREATE TABLE [dbo].[credit_documenttype] (
    [DocumentTypeId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (100) NOT NULL,
    [Active]         BIT           NULL,
    [Deleted]        BIT           NULL,
    [CreatedBy]      VARCHAR (50)  NULL,
    [CreatedOn]      DATETIME      NULL,
    [UpdatedBy]      VARCHAR (50)  NULL,
    [UpdatedOn]      DATETIME      NULL,
    CONSTRAINT [PK_credit_documenttype] PRIMARY KEY CLUSTERED ([DocumentTypeId] ASC)
);

