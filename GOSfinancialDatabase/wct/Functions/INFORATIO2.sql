﻿CREATE AGGREGATE [wct].[INFORATIO2](@PDate DATETIME, @PValue FLOAT (53), @BValue FLOAT (53), @Scale FLOAT (53), @Geometric BIT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.INFORATIO2];

