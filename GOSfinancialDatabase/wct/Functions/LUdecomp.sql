CREATE FUNCTION [wct].[LUdecomp]
(@Matrix_TableName NVARCHAR (MAX), @Matrix_ColumnNames NVARCHAR (4000), @Matrix_GroupedColumnName NVARCHAR (4000), @Matrix_GroupedColumnValue SQL_VARIANT)
RETURNS 
     TABLE (
        [RowNum] INT          NULL,
        [ColNum] INT          NULL,
        [Value]  FLOAT (53)   NULL,
        [Type]   NVARCHAR (2) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[LUdecomp]

