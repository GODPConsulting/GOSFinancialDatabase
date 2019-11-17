CREATE TABLE [dbo].[cor_currency] (
    [CurrencyId]   INT           IDENTITY (1, 1) NOT NULL,
    [CurrencyCode] VARCHAR (10)  NOT NULL,
    [CurrencyName] VARCHAR (250) NOT NULL,
    [BaseCurrency] BIT           CONSTRAINT [DF_cor_currency_BaseCurrency] DEFAULT ((0)) NULL,
    [INUSE]        BIT           CONSTRAINT [DF_cor_currency_INUSE] DEFAULT ((0)) NULL,
    [Active]       BIT           NULL,
    [Deleted]      BIT           NULL,
    [CreatedBy]    VARCHAR (50)  NULL,
    [CreatedOn]    DATETIME      NULL,
    [UpdatedBy]    VARCHAR (50)  NULL,
    [UpdatedOn]    DATETIME      NULL,
    CONSTRAINT [PK_cor_currency] PRIMARY KEY CLUSTERED ([CurrencyId] ASC)
);

