﻿CREATE FUNCTION [wct].[SUMXMY2]
(@Matrix1 NVARCHAR (MAX), @Matrix2 NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SUMXMY2]

