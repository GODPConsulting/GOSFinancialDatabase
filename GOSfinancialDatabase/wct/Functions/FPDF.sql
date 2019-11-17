CREATE FUNCTION [wct].[FPDF]
(@X FLOAT (53), @Degrees_freedom1 FLOAT (53), @Degrees_freedom2 FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[FPDF]

