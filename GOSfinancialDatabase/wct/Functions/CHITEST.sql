CREATE FUNCTION [wct].[CHITEST]
(@Actual_range_TableName NVARCHAR (MAX), @ColumnNames NVARCHAR (4000), @GroupedColumnName NVARCHAR (4000), @GroupedColumnValue SQL_VARIANT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CHITEST]

