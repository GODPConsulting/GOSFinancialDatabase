CREATE FUNCTION [wct].[DOLLARFR]
(@Decimal_dollar FLOAT (53), @Fraction INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DOLLARFR]

