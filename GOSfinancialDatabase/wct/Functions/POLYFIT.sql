CREATE FUNCTION [wct].[POLYFIT]
(@TableName NVARCHAR (MAX), @x_ColumnName NVARCHAR (4000), @y_ColumnName NVARCHAR (4000), @GroupedColumnName NVARCHAR (4000), @Matrix_GroupedColumnValue SQL_VARIANT, @n INT)
RETURNS 
     TABLE (
        [coe_num] INT        NULL,
        [coe_val] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[POLYFIT]

