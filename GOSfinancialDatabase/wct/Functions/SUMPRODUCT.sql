﻿CREATE AGGREGATE [wct].[SUMPRODUCT](@array NVARCHAR (MAX))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.SUMPRODUCT];

