﻿CREATE FUNCTION [wct].[RANDNORM]
(@mu FLOAT (53), @sigma FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RANDNORM]

