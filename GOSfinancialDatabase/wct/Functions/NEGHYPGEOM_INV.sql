CREATE FUNCTION [wct].[NEGHYPGEOM_INV]
(@p FLOAT (53), @num_success FLOAT (53), @pop_success FLOAT (53), @pop_size FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NEGHYPGEOM_INV]

