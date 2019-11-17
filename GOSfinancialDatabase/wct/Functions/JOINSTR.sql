CREATE FUNCTION [wct].[JOINSTR]
(@Separator NVARCHAR (4000), @MaxItems INT, @Values_Tablename NVARCHAR (4000), @ColumnName NVARCHAR (4000), @GroupedColumnName NVARCHAR (4000), @GroupedColumnValue SQL_VARIANT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[JOINSTR]

