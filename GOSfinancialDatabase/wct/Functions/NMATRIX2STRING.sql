﻿CREATE AGGREGATE [wct].[NMATRIX2STRING](@Row INT, @Col INT, @Value FLOAT (53))
    RETURNS NVARCHAR (MAX)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.NMATRIX2STRING];

