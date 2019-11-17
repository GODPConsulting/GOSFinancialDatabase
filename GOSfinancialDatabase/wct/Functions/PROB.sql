CREATE AGGREGATE [wct].[PROB](@x FLOAT (53), @p FLOAT (53), @lower_limit FLOAT (53), @upper_limit FLOAT (53))
    RETURNS FLOAT (53)
    EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.PROB];

