﻿CREATE FUNCTION [wct].[EXPPRED]
(@Coef NVARCHAR (MAX), @New_x NVARCHAR (MAX), @UseNames BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[EXPPRED]

