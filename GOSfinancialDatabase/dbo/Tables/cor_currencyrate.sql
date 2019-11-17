CREATE TABLE [dbo].[cor_currencyrate] (
    [CurrencyRateId] INT          IDENTITY (1, 1) NOT NULL,
    [CurrencyId]     INT          NOT NULL,
    [Date]           DATE         NOT NULL,
    [BuyingRate]     FLOAT (53)   NULL,
    [SellingRate]    FLOAT (53)   NULL,
    [Active]         BIT          NULL,
    [Deleted]        BIT          NULL,
    [CreatedBy]      VARCHAR (50) NULL,
    [CreatedOn]      DATETIME     NULL,
    [UpdatedBy]      VARCHAR (50) NULL,
    [UpdatedOn]      DATETIME     NULL,
    CONSTRAINT [PK_cor_currencyrate] PRIMARY KEY CLUSTERED ([CurrencyRateId] ASC),
    CONSTRAINT [FK_cor_currencyrate_cor_currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[cor_currency] ([CurrencyId])
);

