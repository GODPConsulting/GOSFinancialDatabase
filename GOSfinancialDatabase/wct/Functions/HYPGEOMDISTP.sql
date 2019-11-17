CREATE FUNCTION [wct].[HYPGEOMDISTP]
(@Sample_s FLOAT (53), @Number_sample FLOAT (53), @Population_s FLOAT (53), @Number_population FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[HYPGEOMDISTP]

