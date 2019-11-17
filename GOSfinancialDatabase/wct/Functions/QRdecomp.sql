CREATE FUNCTION [wct].[QRdecomp]
(@Matrix_TableName NVARCHAR (MAX), @Matrix_ColumnNames NVARCHAR (4000), @Matrix_GroupedColumnName NVARCHAR (4000), @Matrix_GroupedColumnValue SQL_VARIANT)
RETURNS 
     TABLE (
        [Matrix]    NVARCHAR (2) NULL,
        [RowNum]    INT          NULL,
        [ColNum]    INT          NULL,
        [ItemValue] FLOAT (53)   NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[QRdecomp]

