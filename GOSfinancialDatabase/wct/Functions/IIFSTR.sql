﻿CREATE FUNCTION [wct].[IIFSTR]
(@Condition BIT, @TrueValue NVARCHAR (MAX), @FalseValue NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[IIFSTR]

