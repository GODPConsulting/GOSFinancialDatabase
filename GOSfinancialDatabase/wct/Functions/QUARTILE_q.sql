CREATE FUNCTION [wct].[QUARTILE_q]
(@Values_RangeQuery NVARCHAR (MAX), @Quart FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[QUARTILE_q]

