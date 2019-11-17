CREATE FUNCTION [wct].[SMALL_q]
(@Values_RangeQuery NVARCHAR (MAX), @K FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SMALL_q]

