﻿CREATE FUNCTION [wct].[COMBIN]
(@Number FLOAT (53), @Number_chosen FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[COMBIN]

