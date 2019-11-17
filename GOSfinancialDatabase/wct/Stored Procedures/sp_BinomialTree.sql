CREATE PROCEDURE [wct].[sp_BinomialTree]
@CallPut NVARCHAR (4000), @AssetPrice FLOAT (53), @StrikePrice FLOAT (53), @TimeToMaturity FLOAT (53), @RiskFreeRate FLOAT (53), @DividendRate FLOAT (53), @Volatility FLOAT (53), @nSteps INT, @AmEur NVARCHAR (4000)
AS EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.StoredProcedures].[sp_BinomialTree]

