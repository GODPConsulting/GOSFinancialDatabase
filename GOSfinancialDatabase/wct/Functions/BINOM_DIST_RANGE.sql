CREATE FUNCTION [wct].[BINOM_DIST_RANGE]
(@Trials INT, @Probability_s FLOAT (53), @Number_s INT, @Number_s2 INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BINOM_DIST_RANGE]

