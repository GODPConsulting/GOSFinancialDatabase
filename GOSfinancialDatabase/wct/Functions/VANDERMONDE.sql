﻿CREATE FUNCTION [wct].[VANDERMONDE]
(@X NVARCHAR (MAX), @N INT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[VANDERMONDE]

