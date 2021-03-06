﻿CREATE TABLE [dbo].[fin_transaction] (
    [TransactionId]   INT           IDENTITY (1, 1) NOT NULL,
    [TransactionCode] VARCHAR (50)  NULL,
    [BatchCode]       VARCHAR (50)  NOT NULL,
    [ReferenceNo]     VARCHAR (50)  NOT NULL,
    [SubGLId]         INT           NOT NULL,
    [OperationId]     INT           NOT NULL,
    [CasaAccountId]   INT           NULL,
    [DebitAmount]     MONEY         NOT NULL,
    [CreditAmount]    MONEY         NOT NULL,
    [RunningBalance]  MONEY         NULL,
    [Description]     VARCHAR (550) NOT NULL,
    [ValueDate]       DATE          NOT NULL,
    [PostedDate]      DATE          NOT NULL,
    [CurrencyId]      INT           NOT NULL,
    [ExchangeRate]    FLOAT (53)    NOT NULL,
    [IsApproved]      BIT           NOT NULL,
    [IsReversal]      BIT           NOT NULL,
    [CompanyId]       INT           NULL,
    [PostedBy]        INT           NOT NULL,
    [ApprovedBy]      INT           NOT NULL,
    [ApprovedDate]    DATE          NOT NULL,
    [Active]          BIT           NULL,
    [Deleted]         BIT           NULL,
    [CreatedBy]       VARCHAR (50)  NULL,
    [CreatedOn]       DATETIME      NULL,
    [UpdatedBy]       VARCHAR (50)  NULL,
    [UpdatedOn]       DATETIME      NULL,
    CONSTRAINT [PK_fin_transaction] PRIMARY KEY CLUSTERED ([TransactionId] ASC),
    CONSTRAINT [FK_fin_transaction_cor_currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[cor_currency] ([CurrencyId]),
    CONSTRAINT [FK_fin_transaction_cor_staff] FOREIGN KEY ([PostedBy]) REFERENCES [dbo].[cor_staff] ([StaffId]),
    CONSTRAINT [FK_fin_transaction_cor_staff1] FOREIGN KEY ([ApprovedBy]) REFERENCES [dbo].[cor_staff] ([StaffId]),
    CONSTRAINT [FK_fin_transaction_fin_subgeneralledger] FOREIGN KEY ([SubGLId]) REFERENCES [dbo].[fin_subgeneralledger] ([SubGLId])
);

