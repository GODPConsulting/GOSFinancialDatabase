CREATE TABLE [dbo].[fin_currencymanagementsetup] (
    [CurrencyManagementSetupId] INT             IDENTITY (1, 1) NOT NULL,
    [CompanyId]                 INT             NOT NULL,
    [FunctioningCurrency]       INT             NULL,
    [ReportingCurrency]         INT             NULL,
    [ExchangeRate]              DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_fin_currencymanagementsetup] PRIMARY KEY CLUSTERED ([CurrencyManagementSetupId] ASC)
);

