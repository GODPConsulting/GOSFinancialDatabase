CREATE FUNCTION [wct].[SERIESSUM]
(@x FLOAT (53), @n FLOAT (53), @m FLOAT (53), @a_TableName NVARCHAR (MAX), @a_ColumnName NVARCHAR (4000), @a_GroupedColumnName NVARCHAR (4000), @a_GroupedColumnValue SQL_VARIANT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SERIESSUM]

