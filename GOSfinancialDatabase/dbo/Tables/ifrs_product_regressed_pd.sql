﻿CREATE TABLE [dbo].[ifrs_product_regressed_pd] (
    [ProductRegressedPDId] INT          IDENTITY (1, 1) NOT NULL,
    [LoanReferenceNumber]  VARCHAR (50) NULL,
    [Year]                 INT          NOT NULL,
    [AnnualPD]             FLOAT (53)   NOT NULL,
    [LifeTimePD]           FLOAT (53)   NULL,
    [CompanyId]            INT          NULL,
    [RunDate]              DATETIME     NULL,
    [ProductCode]          VARCHAR (50) NULL,
    [Active]               BIT          NULL,
    [Deleted]              BIT          NULL,
    [CreatedBy]            VARCHAR (50) NULL,
    [CreatedOn]            DATETIME     NULL,
    [UpdatedBy]            VARCHAR (50) NULL,
    [UpdatedOn]            DATETIME     NULL,
    [RowVersion]           ROWVERSION   NOT NULL
);

