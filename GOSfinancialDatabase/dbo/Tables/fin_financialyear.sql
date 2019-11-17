CREATE TABLE [dbo].[fin_financialyear] (
    [FinancialYearId] INT          IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (50) NULL,
    [StartDate]       DATE         NULL,
    [EndDate]         DATE         NULL,
    [Status]          INT          NULL,
    [Active]          BIT          NULL,
    [Deleted]         BIT          NULL,
    [CreatedBy]       VARCHAR (50) NULL,
    [CreatedOn]       DATETIME     NULL,
    [UpdatedBy]       VARCHAR (50) NULL,
    [UpdatedOn]       DATETIME     NULL,
    CONSTRAINT [PK_fin_financialyear] PRIMARY KEY CLUSTERED ([FinancialYearId] ASC)
);

