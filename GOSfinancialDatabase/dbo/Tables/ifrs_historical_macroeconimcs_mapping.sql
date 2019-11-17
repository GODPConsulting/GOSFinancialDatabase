CREATE TABLE [dbo].[ifrs_historical_macroeconimcs_mapping] (
    [HistoricalMacroEconomicMappingId] INT           IDENTITY (1, 1) NOT NULL,
    [ProductId]                        INT           NULL,
    [Variable]                         VARCHAR (150) NULL,
    [Position]                         INT           NULL,
    [Type]                             INT           NULL,
    [Value]                            FLOAT (53)    NULL,
    [Year]                             INT           NULL,
    [Active]                           BIT           CONSTRAINT [DF_ifrs_historical_macroeconimcs_mapping_Active] DEFAULT ((1)) NULL,
    [Deleted]                          BIT           CONSTRAINT [DF_ifrs_historical_macroeconimcs_mapping_Deleted] DEFAULT ((0)) NULL,
    [CreatedBy]                        VARCHAR (50)  CONSTRAINT [DF_ifrs_historical_macroeconimcs_mapping_CreatedBy] DEFAULT ('auto') NULL,
    [CreatedOn]                        DATETIME      CONSTRAINT [DF_ifrs_historical_macroeconimcs_mapping_CreatedOn] DEFAULT (getdate()) NULL,
    [UpdatedBy]                        VARCHAR (50)  CONSTRAINT [DF_ifrs_historical_macroeconimcs_mapping_UpdatedBy] DEFAULT ('auto') NULL,
    [UpdatedOn]                        DATETIME      CONSTRAINT [DF_ifrs_historical_macroeconimcs_mapping_UpdatedOn] DEFAULT (getdate()) NULL,
    [RowVersion]                       ROWVERSION    NOT NULL
);

