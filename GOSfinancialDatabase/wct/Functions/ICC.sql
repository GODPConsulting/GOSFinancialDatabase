﻿CREATE FUNCTION [wct].[ICC]
(@InputData_RangeQuery NVARCHAR (MAX), @TypeTest NVARCHAR (4000), @Alpha FLOAT (53), @R0 FLOAT (53), @RV NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ICC]

