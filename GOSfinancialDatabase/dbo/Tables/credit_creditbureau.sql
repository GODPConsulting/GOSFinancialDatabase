CREATE TABLE [dbo].[credit_creditbureau] (
    [CreditBureauId]         INT            IDENTITY (1, 1) NOT NULL,
    [CreditBureauName]       NVARCHAR (300) COLLATE Latin1_General_CI_AS NOT NULL,
    [CorporateChargeAmount]  MONEY          NOT NULL,
    [IndividualChargeAmount] MONEY          CONSTRAINT [DF_Table_1_INDIVIDUAL_CHARGEAMOUNT] DEFAULT ((0)) NOT NULL,
    [GLAccountId]            INT            NOT NULL,
    [IsMandatory]            BIT            CONSTRAINT [DF_Table_1_ISMANDATORY] DEFAULT ((0)) NOT NULL,
    [Active]                 BIT            NULL,
    [Deleted]                BIT            NULL,
    [CreatedBy]              VARCHAR (50)   NULL,
    [CreatedOn]              DATETIME       NULL,
    [UpdatedBy]              VARCHAR (50)   NULL,
    [UpdatedOn]              DATETIME       NULL,
    CONSTRAINT [PK_credit_creditbureau] PRIMARY KEY CLUSTERED ([CreditBureauId] ASC)
);

