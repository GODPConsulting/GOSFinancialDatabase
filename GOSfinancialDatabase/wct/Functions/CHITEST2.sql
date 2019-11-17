CREATE FUNCTION [wct].[CHITEST2]
(@Actual_range_TableName NVARCHAR (MAX), @AR_ColumnNames NVARCHAR (4000), @AR_GroupedColumnName NVARCHAR (4000), @AR_GroupedColumnValue SQL_VARIANT, @Expected_range_TableName NVARCHAR (4000), @ER_ColumnNames NVARCHAR (4000), @ER_GroupedColumnName NVARCHAR (4000), @ER_GroupedColumnValue SQL_VARIANT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CHITEST2]

