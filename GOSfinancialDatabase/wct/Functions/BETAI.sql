﻿CREATE FUNCTION [wct].[BETAI]
(@A FLOAT (53), @B FLOAT (53), @X FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BETAI]

