CREATE AGGREGATE [wct].[TotalRisk](@Ra FLOAT (53), @Rb FLOAT (53), @Rf FLOAT (53), @Freq INT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.TotalRisk];

