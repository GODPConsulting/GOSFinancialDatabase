﻿CREATE FUNCTION [wct].[EXACT]
(@Text1 NVARCHAR (MAX), @Text2 NVARCHAR (MAX), @CaseSensitive BIT)
RETURNS BIT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[EXACT]

