CREATE TABLE [dbo].[ifrs_regress_macro_variable] (
    [RegressMacroVariableId] INT          IDENTITY (1, 1) NOT NULL,
    [PD]                     FLOAT (53)   NULL,
    [Variable1]              FLOAT (53)   NULL,
    [Variable2]              FLOAT (53)   NULL,
    [Variable3]              FLOAT (53)   NULL,
    [Variable4]              FLOAT (53)   NULL,
    [Variable5]              FLOAT (53)   NULL,
    [Variable6]              FLOAT (53)   NULL,
    [Variable7]              FLOAT (53)   NULL,
    [LoanReferenceNumber]    VARCHAR (50) NULL,
    [Year]                   INT          NULL,
    [Rundate]                DATE         NULL,
    [ProductCode]            VARCHAR (50) NULL
);

