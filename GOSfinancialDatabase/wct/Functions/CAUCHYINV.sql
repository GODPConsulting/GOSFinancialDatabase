﻿CREATE FUNCTION [wct].[CAUCHYINV]
(@P FLOAT (53), @A FLOAT (53), @B FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CAUCHYINV]

