﻿CREATE FUNCTION [wct].[MDIETZ_q]
(@CashFlows_RangeQuery NVARCHAR (MAX), @StartDate DATETIME, @EndDate DATETIME, @BMV FLOAT (53), @EMV FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MDIETZ_q]

