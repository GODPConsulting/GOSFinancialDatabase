CREATE FUNCTION [wct].[XNPV_q]
(@Rate FLOAT (53), @CashFlows_RangeQuery NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[XNPV_q]

