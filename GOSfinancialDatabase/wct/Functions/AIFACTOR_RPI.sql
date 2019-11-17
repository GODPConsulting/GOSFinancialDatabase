CREATE FUNCTION [wct].[AIFACTOR_RPI]
(@Basis NVARCHAR (4000), @Rate FLOAT (53), @PrevCoupDate DATETIME, @Settlement DATETIME, @NextCoupDate DATETIME, @Frequency INT, @Maturity DATETIME, @Holidays NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[AIFACTOR_RPI]

