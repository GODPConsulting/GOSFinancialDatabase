﻿CREATE FUNCTION [wct].[LPERMUTA]
(@n INT, @k INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[LPERMUTA]

