CREATE AGGREGATE [wct].[LINEAR](@Known_x FLOAT (53), @Known_y FLOAT (53), @New_x FLOAT (53), @Extrapolate BIT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.LINEAR];

