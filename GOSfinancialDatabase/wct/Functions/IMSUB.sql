﻿CREATE FUNCTION [wct].[IMSUB]
(@inumber1 NVARCHAR (4000), @inumber2 NVARCHAR (4000))
RETURNS NVARCHAR (4000)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[IMSUB]

