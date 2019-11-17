CREATE FUNCTION [wct].[EPV]
(@Rate FLOAT (53), @StartPer FLOAT (53), @EndPer FLOAT (53), @Cashflow FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[EPV]

