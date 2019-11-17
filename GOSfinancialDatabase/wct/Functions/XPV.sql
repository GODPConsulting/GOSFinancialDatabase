CREATE FUNCTION [wct].[XPV]
(@Rate FLOAT (53), @StartDate DATETIME, @EndDate DATETIME, @Cashflow FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[XPV]

