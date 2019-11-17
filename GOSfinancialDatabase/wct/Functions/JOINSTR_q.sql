CREATE FUNCTION [wct].[JOINSTR_q]
(@Separator NVARCHAR (4000), @MaxItems INT, @Values_RangeQuery NVARCHAR (4000))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[JOINSTR_q]

