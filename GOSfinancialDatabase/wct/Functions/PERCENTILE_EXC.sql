﻿CREATE AGGREGATE [wct].[PERCENTILE_EXC](@x FLOAT (53), @k FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.PERCENTILE_EXC];

