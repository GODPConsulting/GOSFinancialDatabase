﻿CREATE FUNCTION [wct].[TRIMMEAN_q]
(@Values_RangeQuery NVARCHAR (MAX), @Percent FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[TRIMMEAN_q]

