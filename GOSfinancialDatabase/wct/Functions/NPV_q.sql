CREATE FUNCTION [wct].[NPV_q]
(@Rate FLOAT (53), @Cashflows_RangeQuery NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NPV_q]

