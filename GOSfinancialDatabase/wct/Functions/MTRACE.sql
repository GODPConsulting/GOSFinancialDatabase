CREATE FUNCTION [wct].[MTRACE]
(@Matrix_TableName NVARCHAR (MAX), @ColumnNames NVARCHAR (MAX), @GroupedColumnName NVARCHAR (4000), @GroupedColumnValue SQL_VARIANT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MTRACE]

