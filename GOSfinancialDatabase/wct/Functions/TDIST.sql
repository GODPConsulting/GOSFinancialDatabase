﻿CREATE FUNCTION [wct].[TDIST]
(@X FLOAT (53), @Degrees_freedom FLOAT (53), @Tails INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[TDIST]

