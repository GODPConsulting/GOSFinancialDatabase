﻿CREATE AGGREGATE [wct].[TTEST_INDEPU](@Label SQL_VARIANT, @Value FLOAT (53), @Statistic NVARCHAR (4000), @XLabel SQL_VARIANT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.TTEST_INDEPU];

