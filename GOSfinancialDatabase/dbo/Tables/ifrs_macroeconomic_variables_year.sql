CREATE TABLE [dbo].[ifrs_macroeconomic_variables_year] (
    [MacroEconomicVariableId] INT          IDENTITY (1, 1) NOT NULL,
    [Year]                    INT          NULL,
    [GDP]                     FLOAT (53)   NULL,
    [Unemployement]           FLOAT (53)   NULL,
    [Inflation]               FLOAT (53)   NULL,
    [erosion]                 FLOAT (53)   NULL,
    [ForegnEx]                FLOAT (53)   NULL,
    [Others]                  FLOAT (53)   NULL,
    [otherfactor]             FLOAT (53)   NULL,
    [Active]                  BIT          NULL,
    [Deleted]                 BIT          NULL,
    [CreatedBy]               VARCHAR (50) NULL,
    [CreatedOn]               DATETIME     NULL,
    [UpdatedBy]               VARCHAR (50) NULL,
    [UpdatedOn]               DATETIME     NULL,
    CONSTRAINT [PK_ifrs_macroeconomic_variables_year] PRIMARY KEY CLUSTERED ([MacroEconomicVariableId] ASC)
);

