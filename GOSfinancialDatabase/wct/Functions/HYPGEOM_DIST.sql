CREATE FUNCTION [wct].[HYPGEOM_DIST]
(@Sample_s FLOAT (53), @Number_sample FLOAT (53), @Population_s FLOAT (53), @Number_population FLOAT (53), @Cumulative BIT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[HYPGEOM_DIST]

