﻿CREATE AGGREGATE [wct].[GTWRR](@CF FLOAT (53), @CFdate DATETIME, @MV BIT, @CalcRule INT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.GTWRR];

