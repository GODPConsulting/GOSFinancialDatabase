﻿CREATE FUNCTION [wct].[COUNT_q]
(@RangeQuery NVARCHAR (MAX))
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[COUNT_q]
