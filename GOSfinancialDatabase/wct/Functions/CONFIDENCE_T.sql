﻿CREATE FUNCTION [wct].[CONFIDENCE_T]
(@Alpha FLOAT (53), @Standard_dev FLOAT (53), @Size FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CONFIDENCE_T]

