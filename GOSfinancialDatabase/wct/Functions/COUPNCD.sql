﻿CREATE FUNCTION [wct].[COUPNCD]
(@Settlement DATETIME, @Maturity DATETIME, @Frequency FLOAT (53), @Basis NVARCHAR (4000))
RETURNS DATETIME
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[COUPNCD]

