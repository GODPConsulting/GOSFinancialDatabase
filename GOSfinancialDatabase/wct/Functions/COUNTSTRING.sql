﻿CREATE FUNCTION [wct].[COUNTSTRING]
(@Text NVARCHAR (MAX), @SearchValue NVARCHAR (MAX), @CaseSensitive BIT)
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[COUNTSTRING]
