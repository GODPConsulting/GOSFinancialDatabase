﻿CREATE FUNCTION [wct].[PADLEFT]
(@Text NVARCHAR (MAX), @TotalWidth INT, @PaddingChar NVARCHAR (1))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PADLEFT]

