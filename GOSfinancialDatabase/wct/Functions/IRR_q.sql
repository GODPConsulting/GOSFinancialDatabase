CREATE FUNCTION [wct].[IRR_q]
(@Cashflows_RangeQuery NVARCHAR (MAX), @Guess FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[IRR_q]

