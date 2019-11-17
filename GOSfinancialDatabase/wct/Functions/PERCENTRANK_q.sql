CREATE FUNCTION [wct].[PERCENTRANK_q]
(@Values_RangeQuery NVARCHAR (MAX), @X FLOAT (53), @Significance FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PERCENTRANK_q]

