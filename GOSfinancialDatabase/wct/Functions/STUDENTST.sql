CREATE FUNCTION [wct].[STUDENTST]
(@X FLOAT (53), @Degrees_freedom FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[STUDENTST]

