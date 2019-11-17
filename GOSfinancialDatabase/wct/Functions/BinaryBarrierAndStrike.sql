CREATE FUNCTION [wct].[BinaryBarrierAndStrike]
(@CallPut NVARCHAR (4000), @BarrierType NVARCHAR (4000), @CashOrNothing BIT, @AssetPrice FLOAT (53), @StrikePrice FLOAT (53), @BarrierPrice FLOAT (53), @Rebate FLOAT (53), @TimeToMaturity FLOAT (53), @RiskFreeRate FLOAT (53), @DividendRate FLOAT (53), @Volatility FLOAT (53), @ReturnValue NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BinaryBarrierAndStrike]

