﻿CREATE FUNCTION [wct].[BILINEARINTERP]
(@Grid NVARCHAR (MAX), @New_x FLOAT (53), @New_y FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BILINEARINTERP]

