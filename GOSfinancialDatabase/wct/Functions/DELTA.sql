﻿CREATE FUNCTION [wct].[DELTA]
(@Number1 FLOAT (53), @Number2 FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DELTA]

