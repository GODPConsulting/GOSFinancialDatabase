﻿CREATE AGGREGATE [wct].[KSTEST](@x FLOAT (53), @cdf FLOAT (53), @statistic NVARCHAR (4000))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.KSTEST];

