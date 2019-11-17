CREATE FUNCTION [wct].[FIXED]
(@Number FLOAT (53), @Decimals INT, @No_commas BIT)
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[FIXED]

