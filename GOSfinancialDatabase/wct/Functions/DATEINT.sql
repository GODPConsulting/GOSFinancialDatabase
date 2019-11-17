CREATE FUNCTION [wct].[DATEINT]
(@Year INT, @Month INT, @Day INT)
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DATEINT]

