﻿CREATE FUNCTION [wct].[FORMATNUM]
(@Value FLOAT (53), @Format NVARCHAR (4000))
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[FORMATNUM]
