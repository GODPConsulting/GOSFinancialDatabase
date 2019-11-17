CREATE TABLE [dbo].[credit_casa_lien] (
    [LienId]                INT           IDENTITY (1, 1) NOT NULL,
    [SourceReferenceNumber] VARCHAR (50)  NOT NULL,
    [ProductAccountNumber]  VARCHAR (50)  NOT NULL,
    [LienReferenceNumber]   VARCHAR (50)  NOT NULL,
    [CompanyId]             INT           NOT NULL,
    [LienCreditAmount]      MONEY         NOT NULL,
    [LienDebitAmount]       MONEY         NOT NULL,
    [Description]           VARCHAR (500) NOT NULL,
    [LienTypeId]            INT           NOT NULL,
    [CreatedOn]             DATE          NOT NULL,
    [CreatedBy]             INT           NOT NULL,
    CONSTRAINT [PK_credit_casa_lien] PRIMARY KEY CLUSTERED ([LienId] ASC)
);

