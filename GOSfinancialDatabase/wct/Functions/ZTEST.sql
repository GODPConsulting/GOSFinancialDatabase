﻿CREATE AGGREGATE [wct].[ZTEST](@known_x FLOAT (53), @mu FLOAT (53), @sigma FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.ZTEST];

