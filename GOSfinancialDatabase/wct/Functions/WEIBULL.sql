CREATE FUNCTION [wct].[WEIBULL]
(@X FLOAT (53), @Alpha FLOAT (53), @Beta FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[WEIBULL]

