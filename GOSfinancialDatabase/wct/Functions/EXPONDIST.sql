﻿CREATE FUNCTION [wct].[EXPONDIST]
(@X FLOAT (53), @Lambda FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[EXPONDIST]

