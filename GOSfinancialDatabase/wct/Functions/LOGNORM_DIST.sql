﻿CREATE FUNCTION [wct].[LOGNORM_DIST]
(@X FLOAT (53), @Mean FLOAT (53), @Standard_dev FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[LOGNORM_DIST]

