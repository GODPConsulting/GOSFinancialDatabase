﻿CREATE FUNCTION [wct].[MRANK]
(@MatrixQuery NVARCHAR (MAX), @IS3N BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MRANK]

