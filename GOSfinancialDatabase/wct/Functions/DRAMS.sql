﻿CREATE FUNCTION [wct].[DRAMS]
(@Weight FLOAT (53), @From_scale NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DRAMS]

