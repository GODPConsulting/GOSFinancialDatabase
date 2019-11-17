CREATE FUNCTION [wct].[ZEROCOUPON]
(@InputData_RangeQuery NVARCHAR (MAX), @vDate DATETIME, @ReturnValue NVARCHAR (4000), @StartDate DATETIME, @Frequency FLOAT (53), @SpotDate DATETIME, @CashBasis NVARCHAR (4000), @FuturesBasis NVARCHAR (4000), @SwapsBasis NVARCHAR (4000), @InterpMethod NVARCHAR (4000), @DateRoll NVARCHAR (4000), @Holidays NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ZEROCOUPON]

