﻿CREATE TABLE [dbo].[cor_company] (
    [CompanyId]             INT            IDENTITY (1, 1) NOT NULL,
    [Code]                  VARCHAR (50)   NOT NULL,
    [Name]                  VARCHAR (250)  NOT NULL,
    [Address1]              VARCHAR (500)  NULL,
    [Address2]              VARCHAR (500)  NULL,
    [Telephone]             VARCHAR (250)  NULL,
    [Fax]                   VARCHAR (250)  NULL,
    [Email]                 VARCHAR (250)  NULL,
    [RegistrationNumber]    VARCHAR (50)   NULL,
    [TaxId]                 VARCHAR (50)   NULL,
    [NoOfEmployees]         INT            NULL,
    [WebSite]               VARCHAR (250)  NULL,
    [Logo]                  IMAGE          NULL,
    [LogoType]              VARCHAR (50)   NULL,
    [City]                  VARCHAR (50)   NULL,
    [State]                 VARCHAR (50)   NULL,
    [CountryId]             INT            NOT NULL,
    [CurrencyId]            INT            NOT NULL,
    [ApplyRegistryTemplate] VARCHAR (10)   NULL,
    [PostalCode]            VARCHAR (50)   NULL,
    [IsMultiCompany]        BIT            NULL,
    [Description]           VARCHAR (2000) NULL,
    [Subsidairy_Level]      INT            NULL,
    [RegistryTemplate]      VARCHAR (50)   NULL,
    [Active]                BIT            NULL,
    [Deleted]               BIT            NULL,
    [CreatedBy]             VARCHAR (50)   NULL,
    [CreatedOn]             DATETIME       NULL,
    [UpdatedBy]             VARCHAR (50)   NULL,
    [UpdatedOn]             DATETIME       NULL,
    CONSTRAINT [PK_cor_company] PRIMARY KEY CLUSTERED ([CompanyId] ASC),
    CONSTRAINT [FK_cor_company_cor_country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[cor_country] ([CountryId]),
    CONSTRAINT [FK_cor_company_cor_currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[cor_currency] ([CurrencyId])
);

