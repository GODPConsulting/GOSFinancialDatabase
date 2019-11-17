CREATE FUNCTION [wct].[AdjustedBarrier]
(@AssetPrice FLOAT (53), @BarrierPrice FLOAT (53), @Volatility FLOAT (53), @Frequency NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[AdjustedBarrier]

