CREATE FUNCTION [wct].[GROWTHMX]
(@TableName NVARCHAR (MAX), @ColumnNames NVARCHAR (4000), @GroupedColumnName NVARCHAR (4000), @GroupedColumnValue SQL_VARIANT, @Y_ColumnNumber INT, @New_x NVARCHAR (MAX), @Lconst BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[GROWTHMX]

