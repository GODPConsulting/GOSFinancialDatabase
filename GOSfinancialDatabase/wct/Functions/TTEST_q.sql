CREATE FUNCTION [wct].[TTEST_q]
(@Sample1_RangeQuery NVARCHAR (MAX), @Sample2_RangeQuery NVARCHAR (MAX), @Tails INT, @Ttype INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[TTEST_q]

