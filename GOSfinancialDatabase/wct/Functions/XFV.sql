CREATE FUNCTION [wct].[XFV]
(@StartDate DATETIME, @CashflowDate DATETIME, @EndDate DATETIME, @CashflowRate FLOAT (53), @EndRate FLOAT (53), @Cashflow FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[XFV]

