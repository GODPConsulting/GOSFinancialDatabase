﻿CREATE FUNCTION [wct].[HARMEAN_q]
(@Values_RangeQuery NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[HARMEAN_q]

