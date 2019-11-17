CREATE FUNCTION [wct].[ODDLINT]
(@Settlement DATETIME, @Maturity DATETIME, @Last_coupon DATETIME, @Rate FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ODDLINT]

