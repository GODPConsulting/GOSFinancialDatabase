﻿CREATE AGGREGATE [wct].[XNPV30360](@Rate FLOAT (53), @CF FLOAT (53), @CFdate DATETIME, @Freq INT, @DAYS360type INT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.XNPV30360];

