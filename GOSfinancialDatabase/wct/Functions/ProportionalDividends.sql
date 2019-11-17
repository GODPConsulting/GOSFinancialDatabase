CREATE FUNCTION [wct].[ProportionalDividends]
(@CallPut NVARCHAR (4000), @AmEur NVARCHAR (4000), @AssetPrice FLOAT (53), @StrikePrice FLOAT (53), @TimeToMaturity FLOAT (53), @RiskFreeRate FLOAT (53), @Dividend_RangeQuery NVARCHAR (MAX), @Volatility FLOAT (53), @NumberOfSteps INT, @RV NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ProportionalDividends]

