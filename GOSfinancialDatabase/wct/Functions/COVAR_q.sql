﻿CREATE FUNCTION [wct].[COVAR_q]
(@Known_y_Known_x_RangeQuery NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[COVAR_q]

