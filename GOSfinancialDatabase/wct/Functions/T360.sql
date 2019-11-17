CREATE FUNCTION [wct].[T360]
(@Maturity DATETIME, @Settlement DATETIME, @CFdate DATETIME, @Freq INT, @Method30360 INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[T360]

