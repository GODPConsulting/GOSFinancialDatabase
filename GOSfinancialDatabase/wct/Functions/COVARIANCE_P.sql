﻿CREATE AGGREGATE [wct].[COVARIANCE_P](@Known_y FLOAT (53), @Known_x FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.COVARIANCE_P];

