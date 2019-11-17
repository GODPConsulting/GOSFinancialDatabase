CREATE TABLE [dbo].[Ifrs_forecasted_macroeconimcs_mapping] (
    [ForecastedMacroEconomicMappingId] INT          IDENTITY (1, 1) NOT NULL,
    [Year]                             INT          NULL,
    [Position]                         INT          NULL,
    [LoanReferenceNumber]              VARCHAR (50) NULL,
    [Type]                             INT          NULL,
    [Variable]                         VARCHAR (50) NULL,
    [value]                            FLOAT (53)   NULL,
    [Rundate]                          DATE         NULL,
    [Active]                           BIT          CONSTRAINT [DF_Ifrs_forecasted_macroeconimcs_Active] DEFAULT ((1)) NULL,
    [Deleted]                          BIT          CONSTRAINT [DF_Ifrs_forecasted_macroeconimcs_Deleted] DEFAULT ((0)) NULL,
    [CreatedBy]                        VARCHAR (50) CONSTRAINT [DF_Ifrs_forecasted_macroeconimcs_CreatedBy] DEFAULT ('auto') NULL,
    [CreatedOn]                        DATETIME     CONSTRAINT [DF_Ifrs_forecasted_macroeconimcs_CreatedOn] DEFAULT (getdate()) NULL,
    [UpdatedBy]                        VARCHAR (50) CONSTRAINT [DF_Ifrs_forecasted_macroeconimcs_UpdatedBy] DEFAULT ('auto') NULL,
    [UpdatedOn]                        DATETIME     CONSTRAINT [DF_Ifrs_forecasted_macroeconimcs_UpdatedOn] DEFAULT (getdate()) NULL,
    [RowVersion]                       ROWVERSION   NOT NULL
);

