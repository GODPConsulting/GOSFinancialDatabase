CREATE FUNCTION [wct].[T_DIST]
(@X FLOAT (53), @df FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[T_DIST]

