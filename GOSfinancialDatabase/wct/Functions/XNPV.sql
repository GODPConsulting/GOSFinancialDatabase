﻿CREATE AGGREGATE [wct].[XNPV](@Disc_rate FLOAT (53), @CF_Amt FLOAT (53), @CF_Date DATETIME)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.XNPV];
