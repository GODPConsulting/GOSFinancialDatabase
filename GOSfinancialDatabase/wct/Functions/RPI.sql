﻿CREATE FUNCTION [wct].[RPI]
(@A FLOAT (53), @DSC FLOAT (53), @E FLOAT (53), @N FLOAT (53), @R FLOAT (53), @Y FLOAT (53), @P FLOAT (53), @F INT, @RV FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RPI]

