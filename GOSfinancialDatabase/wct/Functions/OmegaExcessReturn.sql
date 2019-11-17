CREATE AGGREGATE [wct].[OmegaExcessReturn](@Ra FLOAT (53), @Rb FLOAT (53), @MAR FLOAT (53), @Freq INT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.OmegaExcessReturn];

