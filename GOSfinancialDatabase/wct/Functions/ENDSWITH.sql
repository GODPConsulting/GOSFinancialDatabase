﻿CREATE FUNCTION [wct].[ENDSWITH]
(@Text NVARCHAR (MAX), @Value NVARCHAR (MAX), @CaseSensitive BIT)
RETURNS BIT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ENDSWITH]

