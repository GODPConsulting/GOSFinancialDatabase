CREATE PROCEDURE [wct].[sp_OptionPLMatrix]
@CallPut NVARCHAR (4000), @AssetPrice FLOAT (53), @StrikePrice FLOAT (53), @TimeToMaturity FLOAT (53), @RiskFreeRate FLOAT (53), @DividendRate FLOAT (53), @Volatility FLOAT (53), @AmEur NVARCHAR (4000), @Row NVARCHAR (4000), @RowStep FLOAT (53), @RowNumSteps INT, @Col NVARCHAR (4000), @ColStep FLOAT (53), @ColNumSteps INT, @Notional FLOAT (53), @Decimals INT
AS EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.StoredProcedures].[sp_OptionPLMatrix]

