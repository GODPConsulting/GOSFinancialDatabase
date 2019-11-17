CREATE FUNCTION [wct].[ACCRINT]
(@Issue DATETIME, @First_interest DATETIME, @Settlement DATETIME, @Rate FLOAT (53), @Par FLOAT (53), @Frequency FLOAT (53), @Basis NVARCHAR (4000), @Calc_method BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[ACCRINT]

