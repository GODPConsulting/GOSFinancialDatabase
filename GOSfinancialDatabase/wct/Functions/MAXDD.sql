﻿CREATE AGGREGATE [wct].[MAXDD](@PDate DATETIME, @PValue FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.MAXDD];

