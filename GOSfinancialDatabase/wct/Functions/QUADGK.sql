﻿CREATE FUNCTION [wct].[QUADGK]
(@Func NVARCHAR (MAX), @VarName NVARCHAR (4000), @A FLOAT (53), @B FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[QUADGK]

