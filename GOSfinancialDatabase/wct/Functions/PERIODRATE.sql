﻿CREATE FUNCTION [wct].[PERIODRATE]
(@Nominal FLOAT (53), @ComPeriod FLOAT (53), @PayPeriod FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PERIODRATE]

