﻿CREATE FUNCTION [wct].[DEC2FRAC]
(@Number FLOAT (53), @Digits INT)
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DEC2FRAC]

