﻿CREATE FUNCTION [wct].[YEARFRAC]
(@Start_date DATETIME, @End_date DATETIME, @Basis NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[YEARFRAC]
