﻿CREATE FUNCTION [wct].[BUSDAYS]
(@StartDate DATETIME, @EndDate DATETIME, @Holidays NVARCHAR (MAX))
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BUSDAYS]

