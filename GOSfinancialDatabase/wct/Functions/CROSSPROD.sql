﻿CREATE FUNCTION [wct].[CROSSPROD]
(@A NVARCHAR (MAX), @B NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CROSSPROD]

