﻿CREATE AGGREGATE [wct].[BetaCoSkew](@Ra FLOAT (53), @Rb FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.BetaCoSkew];

