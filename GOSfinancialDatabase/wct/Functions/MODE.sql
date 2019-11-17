CREATE AGGREGATE [wct].[MODE](@known_x FLOAT (53), @behavior INT)
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.MODE];

