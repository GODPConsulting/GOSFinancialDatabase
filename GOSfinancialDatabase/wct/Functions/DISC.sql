CREATE FUNCTION [wct].[DISC]
(@Settlement DATETIME, @Maturity DATETIME, @Pr FLOAT (53), @Redemption FLOAT (53), @Basis NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DISC]

