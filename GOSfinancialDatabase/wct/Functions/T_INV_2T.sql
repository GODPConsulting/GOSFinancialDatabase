﻿CREATE FUNCTION [wct].[T_INV_2T]
(@Probability FLOAT (53), @Degrees_freedom FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[T_INV_2T]

