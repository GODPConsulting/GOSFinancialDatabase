CREATE FUNCTION [wct].[RANK_q]
(@Number FLOAT (53), @Values_RangeQuery NVARCHAR (MAX), @Order FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RANK_q]

