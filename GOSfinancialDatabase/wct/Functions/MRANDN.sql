﻿CREATE FUNCTION [wct].[MRANDN]
(@m INT, @n INT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MRANDN]
