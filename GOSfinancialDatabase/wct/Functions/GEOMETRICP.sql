﻿CREATE FUNCTION [wct].[GEOMETRICP]
(@X FLOAT (53), @P FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[GEOMETRICP]
