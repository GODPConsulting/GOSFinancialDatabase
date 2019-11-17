CREATE TABLE [dbo].[credit_collateralcustomer] (
    [CollateralCustomerId]         INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]                   INT           NOT NULL,
    [CollateralTypeId]             INT           NOT NULL,
    [CurrencyId]                   INT           NOT NULL,
    [CollateralValue]              MONEY         NOT NULL,
    [Location]                     VARCHAR (250) NOT NULL,
    [CollateralCode]               VARCHAR (50)  NOT NULL,
    [CollateralVerificationStatus] BIT           NULL,
    [Active]                       BIT           NULL,
    [Deleted]                      BIT           NULL,
    [CreatedBy]                    VARCHAR (50)  NULL,
    [CreatedOn]                    DATETIME      NULL,
    [UpdatedBy]                    VARCHAR (50)  NULL,
    [UpdatedOn]                    DATETIME      NULL,
    CONSTRAINT [PK_credit_collateralcustomer] PRIMARY KEY CLUSTERED ([CollateralCustomerId] ASC),
    CONSTRAINT [FK_credit_collateralcustomer_cor_currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[cor_currency] ([CurrencyId]),
    CONSTRAINT [FK_credit_collateralcustomer_credit_collateraltype] FOREIGN KEY ([CollateralTypeId]) REFERENCES [dbo].[credit_collateraltype] ([CollateralTypeId]),
    CONSTRAINT [FK_credit_collateralcustomer_credit_loancustomer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[credit_loancustomer] ([CustomerId])
);

