CREATE FUNCTION [wct].[EFV]
(@StartPer FLOAT (53), @Per FLOAT (53), @EndPer FLOAT (53), @CashflowRate FLOAT (53), @EndRate FLOAT (53), @Cashflow FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[EFV]

