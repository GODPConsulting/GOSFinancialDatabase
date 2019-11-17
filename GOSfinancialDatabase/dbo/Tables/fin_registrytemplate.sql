CREATE TABLE [dbo].[fin_registrytemplate] (
    [RegistryTemplateId] INT           IDENTITY (1, 1) NOT NULL,
    [Industry]           VARCHAR (250) NOT NULL,
    [NoteLine]           VARCHAR (250) NULL,
    [Caption]            VARCHAR (250) NOT NULL,
    [ReportCaption]      VARCHAR (250) NOT NULL,
    [SubCaption]         VARCHAR (250) NULL,
    [ParentCaption]      VARCHAR (250) NULL,
    [SubLedger]          VARCHAR (250) NULL,
    [Position]           INT           NULL,
    [AccountTypeId]      INT           NOT NULL,
    [StatementTypeId]    INT           NOT NULL,
    [Active]             BIT           NULL,
    [Deleted]            BIT           NULL,
    [CreatedBy]          VARCHAR (50)  NULL,
    [CreatedOn]          DATETIME      NULL,
    [UpdatedBy]          VARCHAR (50)  NULL,
    [UpdatedOn]          DATETIME      NULL,
    CONSTRAINT [PK_fin_registrytemplate] PRIMARY KEY CLUSTERED ([RegistryTemplateId] ASC),
    CONSTRAINT [FK_fin_registrytemplate_fin_accounttype] FOREIGN KEY ([AccountTypeId]) REFERENCES [dbo].[fin_accounttype] ([AccountTypeId]),
    CONSTRAINT [FK_fin_registrytemplate_fin_statementtype] FOREIGN KEY ([StatementTypeId]) REFERENCES [dbo].[fin_statementtype] ([StatementTypeId])
);

