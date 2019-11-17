CREATE FUNCTION [wct].[XIRR2005]
(@CashFlows_TableName NVARCHAR (MAX), @CashFlows_ColumnName NVARCHAR (4000), @CashFlows_GroupedColumnName NVARCHAR (4000), @CashFlows_GroupedColumnValue SQL_VARIANT, @CashFlowDates_ColumnName NVARCHAR (4000), @Guess FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[XIRR2005]

