CREATE FUNCTION [wct].[SWAPCURVE]
(@InputData_RangeQuery NVARCHAR (MAX), @StartDate DATETIME, @Frequency FLOAT (53), @SpotDate DATETIME, @CashBasis NVARCHAR (4000), @FuturesBasis NVARCHAR (4000), @SwapsBasis NVARCHAR (4000), @Interpolation NVARCHAR (4000), @DateRoll NVARCHAR (4000), @Holidays NVARCHAR (MAX))
RETURNS 
     TABLE (
        [mat_date] DATETIME   NULL,
        [df]       FLOAT (53) NULL,
        [rsource]  NCHAR (3)  NULL,
        [zero_cpn] FLOAT (53) NULL,
        [cczero]   FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SWAPCURVE]

