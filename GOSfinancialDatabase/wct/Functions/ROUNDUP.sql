﻿CREATE FUNCTION [wct].[ROUNDUP]
(@Number FLOAT (53), @Num_digits FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ROUNDUP]

