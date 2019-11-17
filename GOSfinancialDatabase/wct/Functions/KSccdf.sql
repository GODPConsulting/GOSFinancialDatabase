CREATE FUNCTION [wct].[KSccdf]
(@n INT, @k FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[KSccdf]

