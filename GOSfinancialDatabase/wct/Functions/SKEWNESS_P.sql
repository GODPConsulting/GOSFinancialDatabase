﻿CREATE AGGREGATE [wct].[SKEWNESS_P](@Known_x FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.SKEWNESS_P];
