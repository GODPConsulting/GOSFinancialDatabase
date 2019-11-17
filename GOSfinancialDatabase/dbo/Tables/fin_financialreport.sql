CREATE TABLE [dbo].[fin_financialreport] (
    [FinancialReportId] INT           IDENTITY (1, 1) NOT NULL,
    [GLCode]            VARCHAR (50)  NOT NULL,
    [GLDescription]     VARCHAR (250) NOT NULL,
    [ReportCaption]     VARCHAR (250) NOT NULL,
    [Caption]           VARCHAR (250) NOT NULL,
    [SubCaption]        VARCHAR (250) NOT NULL,
    [Balance]           MONEY         NOT NULL,
    [Company]           VARCHAR (250) NOT NULL,
    [ParentCaption]     VARCHAR (250) NOT NULL,
    [AccountType]       VARCHAR (50)  NOT NULL,
    [RunDate]           DATE          NOT NULL,
    [CompanyCode]       VARCHAR (50)  NULL,
    [Multiples]         VARCHAR (50)  NULL,
    [Statement]         VARCHAR (50)  NULL,
    CONSTRAINT [PK_fin_financialreport] PRIMARY KEY CLUSTERED ([FinancialReportId] ASC)
);

