CREATE FUNCTION [wct].[YIELDSTEP]
(@Settlement DATETIME, @Maturity DATETIME, @Price FLOAT (53), @Redemption FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @Coupons NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[YIELDSTEP]

