﻿CREATE FUNCTION [wct].[NORMINV]
(@Probability FLOAT (53), @Mean FLOAT (53), @Standard_dev FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NORMINV]

