CREATE TABLE [dbo].[ifrs_macroeconomic_variables] (
    [MacroEconomicVariableId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]                    VARCHAR (50)  NULL,
    [Description]             VARCHAR (150) NULL,
    [IsGeneric]               BIT           NULL,
    [Active]                  BIT           CONSTRAINT [DF_ifrs_macroeconomic_variables_Active] DEFAULT ((1)) NULL,
    [Deleted]                 BIT           CONSTRAINT [DF_ifrs_macroeconomic_variables_Deleted] DEFAULT ((0)) NULL,
    [CreatedBy]               VARCHAR (50)  CONSTRAINT [DF_ifrs_macroeconomic_variables_CreatedBy] DEFAULT ('auto') NULL,
    [CreatedOn]               DATETIME      CONSTRAINT [DF_ifrs_macroeconomic_variables_CreatedOn] DEFAULT (getdate()) NULL,
    [UpdatedBy]               VARCHAR (50)  CONSTRAINT [DF_ifrs_macroeconomic_variables_UpdatedBy] DEFAULT ('auto') NULL,
    [UpdatedOn]               DATETIME      CONSTRAINT [DF_ifrs_macroeconomic_variables_UpdatedOn] DEFAULT (getdate()) NULL,
    [RowVersion]              ROWVERSION    NOT NULL
);

