CREATE FUNCTION [wct].[NEGBINOM_DIST]
(@Number_f INT, @Number_s INT, @Probability_s FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NEGBINOM_DIST]

