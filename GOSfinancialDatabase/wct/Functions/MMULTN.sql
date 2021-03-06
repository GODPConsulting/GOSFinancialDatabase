﻿CREATE FUNCTION [wct].[MMULTN]
(@Matrix_A_TableName NVARCHAR (MAX), @Matrix_A_Key1ColumnName NVARCHAR (4000), @Matrix_A_Key2ColumnName NVARCHAR (4000), @Matrix_A_DataColumnName NVARCHAR (4000), @Matrix_A_GroupedColumnName NVARCHAR (4000), @Matrix_A_GroupedColumnValue SQL_VARIANT, @Matrix_B_TableName NVARCHAR (4000), @Matrix_B_Key1ColumnName NVARCHAR (4000), @Matrix_B_Key2ColumnName NVARCHAR (4000), @Matrix_B_DataColumnName NVARCHAR (4000), @Matrix_B_GroupedColumnName NVARCHAR (4000), @Matrix_B_GroupedColumnValue SQL_VARIANT)
RETURNS 
     TABLE (
        [RowNum]    INT        NULL,
        [ColNum]    INT        NULL,
        [ItemValue] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MMULTN]

