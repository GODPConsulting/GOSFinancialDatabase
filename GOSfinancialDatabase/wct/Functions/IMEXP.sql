﻿CREATE FUNCTION [wct].[IMEXP]
(@inumber NVARCHAR (4000))
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[IMEXP]

