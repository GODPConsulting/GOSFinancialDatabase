CREATE AGGREGATE [wct].[SPLINE](@known_x FLOAT (53), @known_y FLOAT (53), @new_x FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.SPLINE];

