﻿CREATE AGGREGATE [wct].[RANK](@number FLOAT (53), @x FLOAT (53), @order INT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.RANK];

