CREATE FUNCTION [wct].[EFFECT]
(@Nominal_rate FLOAT (53), @Npery INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[EFFECT]

