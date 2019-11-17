CREATE FUNCTION [wct].[MIRR_q]
(@Cashflows_RangeQuery NVARCHAR (MAX), @Finance_rate FLOAT (53), @Reinvest_rate FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MIRR_q]

