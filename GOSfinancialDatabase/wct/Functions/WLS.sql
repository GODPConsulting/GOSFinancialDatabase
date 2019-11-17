CREATE FUNCTION [wct].[WLS]
(@TableName NVARCHAR (MAX), @ColumnNames NVARCHAR (MAX), @GroupedColumnName NVARCHAR (MAX), @GroupedColumnValue SQL_VARIANT, @LConst BIT, @y_Column NVARCHAR (4000), @w_Column NVARCHAR (4000))
RETURNS 
     TABLE (
        [stat_name] NVARCHAR (20)  NULL,
        [idx]       INT            NULL,
        [stat_val]  FLOAT (53)     NULL,
        [col_name]  NVARCHAR (128) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[WLS]

