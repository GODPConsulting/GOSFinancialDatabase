﻿CREATE AGGREGATE [wct].[XIRR30360](@CF FLOAT (53), @CFdate DATETIME, @Freq INT, @DAYS360type INT, @Guess FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.XIRR30360];

