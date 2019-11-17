CREATE AGGREGATE [wct].[DownsideDeviation](@R FLOAT (53), @MAR FLOAT (53), @Full BIT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.DownsideDeviation];

