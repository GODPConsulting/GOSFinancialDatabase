﻿CREATE FUNCTION [wct].[F_INV_RT]
(@p FLOAT (53), @df1 FLOAT (53), @df2 FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[F_INV_RT]

