﻿CREATE FUNCTION [wct].[NELSONSIEGEL]
(@Maturity FLOAT (53), @B0 FLOAT (53), @B1 FLOAT (53), @B2 FLOAT (53), @Tau FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NELSONSIEGEL]

