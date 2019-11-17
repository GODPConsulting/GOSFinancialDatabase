CREATE FUNCTION [wct].[EXPDIST]
(@X FLOAT (53), @Lambda FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[EXPDIST]

