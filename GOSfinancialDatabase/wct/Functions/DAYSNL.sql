﻿CREATE FUNCTION [wct].[DAYSNL]
(@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DAYSNL]

