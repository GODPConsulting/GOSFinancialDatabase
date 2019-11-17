CREATE TABLE [dbo].[ifrs_historical_product_pd] (
    [HistoricalProductPDId] INT          IDENTITY (1, 1) NOT NULL,
    [Year]                  INT          NULL,
    [Period]                INT          NULL,
    [ProductId]             INT          NULL,
    [PD]                    FLOAT (53)   NULL,
    [AvgPD]                 FLOAT (53)   NULL,
    [Active]                BIT          CONSTRAINT [DF_ifrs_historical_sectorial_pd_Active] DEFAULT ((1)) NULL,
    [Deleted]               BIT          CONSTRAINT [DF_ifrs_historical_sectorial_pd_Deleted] DEFAULT ((0)) NULL,
    [CreatedBy]             VARCHAR (50) CONSTRAINT [DF_ifrs_historical_sectorial_pd_CreatedBy] DEFAULT ('auto') NULL,
    [CreatedOn]             DATETIME     CONSTRAINT [DF_ifrs_historical_sectorial_pd_CreatedOn] DEFAULT (getdate()) NULL,
    [UpdatedBy]             VARCHAR (50) CONSTRAINT [DF_ifrs_historical_sectorial_pd_UpdatedBy] DEFAULT ('auto') NULL,
    [UpdatedOn]             DATETIME     CONSTRAINT [DF_ifrs_historical_sectorial_pd_UpdatedOn] DEFAULT (getdate()) NULL,
    [RowVersion]            ROWVERSION   NOT NULL,
    CONSTRAINT [PK_ifrs_historical_product_pd] PRIMARY KEY CLUSTERED ([HistoricalProductPDId] ASC)
);

