﻿CREATE FUNCTION [wct].[CHITESTN2_q]
(@Actual_range_RangeQuery NVARCHAR (MAX), @Expected_range_RangeQuery NVARCHAR (MAX), @CompareByKeys BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CHITESTN2_q]

