﻿CREATE FUNCTION [wct].[ODDLPRICE]
(@Settlement DATETIME, @Maturity DATETIME, @Last_interest DATETIME, @Rate FLOAT (53), @Yld FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ODDLPRICE]

