CREATE AGGREGATE [wct].[MIRR](@CF_Amt FLOAT (53), @Per INT, @Finance_rate FLOAT (53), @Reinvest_rate FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.MIRR];

