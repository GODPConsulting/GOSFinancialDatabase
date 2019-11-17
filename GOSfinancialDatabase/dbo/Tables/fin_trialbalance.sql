CREATE TABLE [dbo].[fin_trialbalance] (
    [TrialBalanceId]    INT           IDENTITY (1, 1) NOT NULL,
    [GLCode]            VARCHAR (50)  NOT NULL,
    [GLDescription]     VARCHAR (250) NOT NULL,
    [OpeningBalance]    MONEY         NOT NULL,
    [CreditBalance]     MONEY         NOT NULL,
    [DebitBalance]      MONEY         NOT NULL,
    [Balance]           MONEY         NOT NULL,
    [ExchangeRate]      FLOAT (53)    NOT NULL,
    [TranslatedBalance] MONEY         NOT NULL,
    [CurrencyCode]      VARCHAR (50)  NOT NULL,
    [CompanyCode]       VARCHAR (50)  NOT NULL,
    [RunDate]           DATE          NOT NULL,
    [Active]            BIT           NULL,
    [Deleted]           BIT           NULL,
    [CreatedBy]         VARCHAR (50)  NULL,
    [CreatedOn]         DATETIME      NULL,
    [UpdatedBy]         VARCHAR (50)  NULL,
    [UpdatedOn]         DATETIME      NULL,
    CONSTRAINT [PK_fin_trialbalance] PRIMARY KEY CLUSTERED ([TrialBalanceId] ASC)
);

