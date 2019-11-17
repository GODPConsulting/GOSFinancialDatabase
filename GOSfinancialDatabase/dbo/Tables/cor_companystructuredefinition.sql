CREATE TABLE [dbo].[cor_companystructuredefinition] (
    [StructureDefinitionId] INT           IDENTITY (1, 1) NOT NULL,
    [Definition]            VARCHAR (50)  COLLATE Latin1_General_CI_AS NOT NULL,
    [Description]           VARCHAR (150) COLLATE Latin1_General_CI_AS NULL,
    [StructureLevel]        INT           NOT NULL,
    [Active]                BIT           NULL,
    [Deleted]               BIT           NULL,
    [CreatedBy]             VARCHAR (50)  NULL,
    [CreatedOn]             DATETIME      NULL,
    [UpdatedBy]             VARCHAR (50)  NULL,
    [UpdatedOn]             DATETIME      NULL,
    CONSTRAINT [PK_cor_companystructuredefinition] PRIMARY KEY CLUSTERED ([StructureDefinitionId] ASC)
);

