CREATE FUNCTION [wct].[BASE]
(@Number BIGINT, @Radix INT, @MinLength INT)
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BASE]

