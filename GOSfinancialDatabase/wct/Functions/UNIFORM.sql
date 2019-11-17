CREATE FUNCTION [wct].[UNIFORM]
(@X FLOAT (53), @Min FLOAT (53), @Max FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[UNIFORM]

