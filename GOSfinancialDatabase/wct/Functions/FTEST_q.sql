CREATE FUNCTION [wct].[FTEST_q]
(@Values1_RangeQuery NVARCHAR (MAX), @Values2_RangeQuery NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[FTEST_q]

