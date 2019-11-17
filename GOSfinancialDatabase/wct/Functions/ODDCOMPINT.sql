CREATE FUNCTION [wct].[ODDCOMPINT]
(@Basis NVARCHAR (4000), @Rate FLOAT (53), @IssueDate DATETIME, @Settlement DATETIME, @Maturity DATETIME, @FirstCouponDate DATETIME, @LastCouponDate DATETIME, @CompFreq INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ODDCOMPINT]

