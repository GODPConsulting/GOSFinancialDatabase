CREATE FUNCTION [wct].[DIRTYPRICE]
(@Settlement DATETIME, @Maturity DATETIME, @Rate FLOAT (53), @Yield FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @Issue DATETIME, @FirstCoupon DATETIME, @LastCoupon DATETIME)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DIRTYPRICE]

