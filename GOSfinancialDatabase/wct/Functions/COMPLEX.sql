﻿CREATE FUNCTION [wct].[COMPLEX]
(@Real_num FLOAT (53), @i_num FLOAT (53), @Suffix NVARCHAR (4000))
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[COMPLEX]
