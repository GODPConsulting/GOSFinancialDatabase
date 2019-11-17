CREATE FUNCTION [wct].[BinomialPriceNGreeks]
(@CallPut NVARCHAR (4000), @AssetPrice FLOAT (53), @StrikePrice FLOAT (53), @TimeToMaturity FLOAT (53), @RiskFreeRate FLOAT (53), @DividendRate FLOAT (53), @Volatility FLOAT (53), @nSteps INT, @AmEur NVARCHAR (4000))
RETURNS 
     TABLE (
        [Price]  FLOAT (53) NULL,
        [Delta]  FLOAT (53) NULL,
        [Gamma]  FLOAT (53) NULL,
        [Theta]  FLOAT (53) NULL,
        [Vega]   FLOAT (53) NULL,
        [Rho]    FLOAT (53) NULL,
        [Lambda] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[BinomialPriceNGreeks]

