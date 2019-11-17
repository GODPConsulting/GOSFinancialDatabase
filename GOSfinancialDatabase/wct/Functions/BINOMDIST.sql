CREATE FUNCTION [wct].[BINOMDIST]
(@Number_s FLOAT (53), @Trials FLOAT (53), @Probability_s FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BINOMDIST]

