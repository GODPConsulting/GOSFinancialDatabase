﻿CREATE FUNCTION [wct].[KSTEST2_q]
(@X_RangeQuery NVARCHAR (MAX), @Statistic NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[KSTEST2_q]
