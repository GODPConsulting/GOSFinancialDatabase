﻿CREATE AGGREGATE [wct].[IQR](@x FLOAT (53), @mthd NVARCHAR (4000))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.IQR];

