﻿CREATE FUNCTION [wct].[CRITBINOM]
(@Trials INT, @Probability_s FLOAT (53), @Alpha FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CRITBINOM]

