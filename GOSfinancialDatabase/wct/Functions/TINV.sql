﻿CREATE FUNCTION [wct].[TINV]
(@Probability FLOAT (53), @Degrees_freedom FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[TINV]

