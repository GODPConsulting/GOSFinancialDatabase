CREATE FUNCTION [wct].[OptionMatrix]
(@CallPut NVARCHAR (4000), @AssetPrice FLOAT (53), @StrikePrice FLOAT (53), @TimeToMaturity FLOAT (53), @RiskFreeRate FLOAT (53), @DividendRate FLOAT (53), @Volatility FLOAT (53), @ReturnValue NVARCHAR (4000), @AmEur NVARCHAR (4000), @Row NVARCHAR (4000), @RowStep FLOAT (53), @RowNumSteps INT, @Col NVARCHAR (4000), @ColStep FLOAT (53), @ColNumSteps INT)
RETURNS 
     TABLE (
        [idx_row] INT        NULL,
        [idx_col] INT        NULL,
        [row]     FLOAT (53) NULL,
        [col]     FLOAT (53) NULL,
        [val]     FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[OptionMatrix]

