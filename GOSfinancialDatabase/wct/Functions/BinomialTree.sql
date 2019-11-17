CREATE FUNCTION [wct].[BinomialTree]
(@CallPut NVARCHAR (4000), @AssetPrice FLOAT (53), @StrikePrice FLOAT (53), @TimeToMaturity FLOAT (53), @RiskFreeRate FLOAT (53), @DividendRate FLOAT (53), @Volatility FLOAT (53), @nSteps INT, @AmEur NVARCHAR (4000))
RETURNS 
     TABLE (
        [node]       INT        NULL,
        [stepno]     INT        NULL,
        [underlying] FLOAT (53) NULL,
        [intrinsic]  FLOAT (53) NULL,
        [price]      FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BinomialTree]

