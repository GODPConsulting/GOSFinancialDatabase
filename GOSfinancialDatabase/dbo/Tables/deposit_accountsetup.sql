﻿CREATE TABLE [dbo].[deposit_accountsetup] (
    [DepositAccountId]                INT             IDENTITY (1, 1) NOT NULL,
    [AccountName]                     VARCHAR (500)   NULL,
    [Description]                     VARCHAR (500)   NULL,
    [AccountTypeId]                   INT             NOT NULL,
    [DormancyDays]                    VARCHAR (50)    NULL,
    [InitialDeposit]                  DECIMAL (18, 2) NOT NULL,
    [CategoryId]                      INT             NOT NULL,
    [BusinessCategoryId]              INT             NULL,
    [GLMapping]                       INT             NULL,
    [BankGl]                          INT             NULL,
    [InterestRate]                    DECIMAL (18, 2) NULL,
    [InterestType]                    VARCHAR (50)    NULL,
    [CheckCollecting]                 BIT             NULL,
    [MaturityType]                    VARCHAR (50)    NULL,
    [ApplicableTaxId]                 INT             NULL,
    [ApplicableChargesId]             INT             NULL,
    [PreTerminationLiquidationCharge] BIT             NULL,
    [InterestAccrual]                 INT             NULL,
    [Status]                          BIT             NULL,
    [OperatedByAnother]               BIT             NULL,
    [CanNominateBenefactor]           BIT             NULL,
    [UsePresetChartofAccount]         BIT             NULL,
    [TransactionPrefix]               VARCHAR (50)    NULL,
    [CancelPrefix]                    VARCHAR (50)    NULL,
    [RefundPrefix]                    VARCHAR (50)    NULL,
    [Useworkflow]                     BIT             NULL,
    [CanPlaceOnLien]                  BIT             NULL,
    [Active]                          BIT             NULL,
    [Deleted]                         BIT             NULL,
    [CreatedBy]                       VARCHAR (50)    NULL,
    [CreatedOn]                       DATETIME        NULL,
    [UpdatedBy]                       VARCHAR (50)    NULL,
    [UpdatedOn]                       DATETIME        NULL,
    CONSTRAINT [PK_deposit_accountsetup] PRIMARY KEY CLUSTERED ([DepositAccountId] ASC),
    CONSTRAINT [FK_deposit_accountsetup_deposit_accountype] FOREIGN KEY ([AccountTypeId]) REFERENCES [dbo].[deposit_accountype] ([AccountTypeId]),
    CONSTRAINT [FK_deposit_accountsetup_deposit_category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[deposit_category] ([CategoryId]),
    CONSTRAINT [FK_deposit_accountsetup_deposit_transactioncharge] FOREIGN KEY ([ApplicableChargesId]) REFERENCES [dbo].[deposit_transactioncharge] ([TransactionChargeId]),
    CONSTRAINT [FK_deposit_accountsetup_deposit_transactiontax] FOREIGN KEY ([ApplicableTaxId]) REFERENCES [dbo].[deposit_transactiontax] ([TransactionTaxId])
);
