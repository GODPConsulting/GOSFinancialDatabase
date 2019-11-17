CREATE FUNCTION [wct].[MULTINOMIAL]
(@Values_TableName NVARCHAR (MAX), @Values_ColumnName NVARCHAR (4000), @Values_GroupedColumnName NVARCHAR (4000), @Values_GroupedColumnValue SQL_VARIANT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MULTINOMIAL]

