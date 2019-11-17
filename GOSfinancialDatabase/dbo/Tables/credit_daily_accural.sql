CREATE TABLE [dbo].[credit_daily_accural] (
    [DailyAccuralId]     INT           IDENTITY (1, 1) NOT NULL,
    [ReferenceNumber]    NVARCHAR (50) NOT NULL,
    [CategoryId]         INT           NOT NULL,
    [TransactionTypeId]  INT           NOT NULL,
    [ProductId]          INT           NOT NULL,
    [CompanyId]          INT           NOT NULL,
    [BranchId]           INT           NOT NULL,
    [CurrencyId]         INT           NOT NULL,
    [ExchangeRate]       FLOAT (53)    NOT NULL,
    [Amount]             MONEY         NOT NULL,
    [InterestRate]       FLOAT (53)    NOT NULL,
    [Date]               DATE          NOT NULL,
    [DailyAccuralAmount] MONEY         NOT NULL,
    CONSTRAINT [PK_credit_daily_accural] PRIMARY KEY CLUSTERED ([DailyAccuralId] ASC)
);

