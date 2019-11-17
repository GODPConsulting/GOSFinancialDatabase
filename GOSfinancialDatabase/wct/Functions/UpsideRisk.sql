CREATE AGGREGATE [wct].[UpsideRisk](@R FLOAT (53), @MAR FLOAT (53), @Full BIT, @State NVARCHAR (4000))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UpsideRisk];

