﻿CREATE FUNCTION [wct].[SERIESSUM_q]
(@x FLOAT (53), @n FLOAT (53), @m FLOAT (53), @a_RangeQuery NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SERIESSUM_q]
