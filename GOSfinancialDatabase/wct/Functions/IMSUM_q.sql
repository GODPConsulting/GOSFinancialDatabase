﻿CREATE FUNCTION [wct].[IMSUM_q]
(@IMValues_RangeQuery NVARCHAR (4000))
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[IMSUM_q]
