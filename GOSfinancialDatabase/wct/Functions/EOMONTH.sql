﻿CREATE FUNCTION [wct].[EOMONTH]
(@Start_date DATETIME, @Months INT)
RETURNS DATETIME
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[EOMONTH]

