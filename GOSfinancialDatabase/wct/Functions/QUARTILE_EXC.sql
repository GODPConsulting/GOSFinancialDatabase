﻿CREATE AGGREGATE [wct].[QUARTILE_EXC](@x FLOAT (53), @k INT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.QUARTILE_EXC];
