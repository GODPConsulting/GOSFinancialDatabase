﻿CREATE TABLE [dbo].[credit_individualapplicationscorecard_history] (
    [ApplicationScoreCardId] INT             IDENTITY (1, 1) NOT NULL,
    [LoanAmount]             MONEY           NOT NULL,
    [CustomerName]           VARCHAR (250)   NULL,
    [LoanReferenceNumber]    VARCHAR (250)   NULL,
    [ProductCode]            VARCHAR (250)   NULL,
    [ProductName]            VARCHAR (250)   NULL,
    [EffectiveDate]          DATETIME        NULL,
    [MaturityDate]           DATETIME        NULL,
    [CustomerTypeId]         INT             NULL,
    [Field1]                 DECIMAL (18, 4) NULL,
    [Field2]                 DECIMAL (18, 4) NULL,
    [Field3]                 DECIMAL (18, 4) NULL,
    [Field4]                 DECIMAL (18, 4) NULL,
    [Field5]                 DECIMAL (18, 4) NULL,
    [Field6]                 DECIMAL (18, 4) NULL,
    [Field7]                 DECIMAL (18, 4) NULL,
    [Field8]                 DECIMAL (18, 4) NULL,
    [Field9]                 DECIMAL (18, 4) NULL,
    [Field10]                DECIMAL (18, 4) NULL,
    [Field11]                DECIMAL (18, 4) NULL,
    [Field12]                DECIMAL (18, 4) NULL,
    [Field13]                DECIMAL (18, 4) NULL,
    [Field14]                DECIMAL (18, 4) NULL,
    [Field15]                DECIMAL (18, 4) NULL,
    [Field16]                DECIMAL (18, 4) NULL,
    [Field17]                DECIMAL (18, 4) NULL,
    [Field18]                DECIMAL (18, 4) NULL,
    [Field19]                DECIMAL (18, 4) NULL,
    [Field20]                DECIMAL (18, 4) NULL,
    [Field21]                DECIMAL (18, 4) NULL,
    [Field22]                DECIMAL (18, 4) NULL,
    [Field23]                DECIMAL (18, 4) NULL,
    [Field24]                DECIMAL (18, 4) NULL,
    [Field25]                DECIMAL (18, 4) NULL,
    [Field26]                DECIMAL (18, 4) NULL,
    [Field27]                DECIMAL (18, 4) NULL,
    [Field28]                DECIMAL (18, 4) NULL,
    [Field29]                DECIMAL (18, 4) NULL,
    [Field30]                DECIMAL (18, 4) NULL,
    [Active]                 BIT             NULL,
    [Deleted]                BIT             NULL,
    [CreatedBy]              VARCHAR (50)    NULL,
    [CreatedOn]              DATETIME        NULL,
    [UpdatedBy]              VARCHAR (50)    NULL,
    [UpdatedOn]              DATETIME        NULL,
    CONSTRAINT [PK_credit_individualapplicationscorecard_history] PRIMARY KEY CLUSTERED ([ApplicationScoreCardId] ASC)
);

