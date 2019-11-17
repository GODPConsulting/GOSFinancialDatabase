CREATE FUNCTION [wct].[LARGE_q]
(@Values_RangeQuery NVARCHAR (MAX), @K FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[LARGE_q]

