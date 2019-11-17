CREATE FUNCTION [wct].[MDETERMN]
(@Matrix_TableName NVARCHAR (MAX), @Key1Columnname NVARCHAR (4000), @Key2ColumnName NVARCHAR (4000), @DataColumnName NVARCHAR (4000), @GroupedColumnName NVARCHAR (4000), @GroupedColumnValue SQL_VARIANT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MDETERMN]

