﻿CREATE FUNCTION [wct].[COUPNUM]
(@Settlement DATETIME, @Maturity DATETIME, @Frequency FLOAT (53), @Basis NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[COUPNUM]

