﻿CREATE FUNCTION [wct].[ROMAN]
(@Number FLOAT (53))
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ROMAN]

