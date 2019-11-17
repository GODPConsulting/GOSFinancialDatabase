CREATE FUNCTION [wct].[TRENDMX_q]
(@Matrix_RangeQuery NVARCHAR (MAX), @Y_ColumnNumber INT, @New_x NVARCHAR (MAX), @Lconst BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[TRENDMX_q]

