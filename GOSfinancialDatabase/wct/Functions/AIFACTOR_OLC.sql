CREATE FUNCTION [wct].[AIFACTOR_OLC]
(@Basis NVARCHAR (4000), @Rate FLOAT (53), @LastCouponDate DATETIME, @Settlement DATETIME, @MaturityDate DATETIME, @Frequency INT, @Holidays NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[AIFACTOR_OLC]

