﻿CREATE FUNCTION [wct].[MCOLS]
(@Matrix NVARCHAR (MAX))
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MCOLS]

