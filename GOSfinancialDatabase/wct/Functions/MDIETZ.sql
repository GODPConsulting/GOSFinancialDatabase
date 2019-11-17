CREATE FUNCTION [wct].[MDIETZ]
(@CashFlow_TableName NVARCHAR (MAX), @CashFlowDates_ColumnName NVARCHAR (4000), @CashFlows_ColumnName NVARCHAR (4000), @GroupedColumnName NVARCHAR (4000), @GroupedColumnValue SQL_VARIANT, @StartDate DATETIME, @EndDate DATETIME, @BMV FLOAT (53), @EMV FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MDIETZ]

