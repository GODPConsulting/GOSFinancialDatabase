﻿CREATE FUNCTION [wct].[MTRACEN_q]
(@Matrix_RangeQuery NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MTRACEN_q]

