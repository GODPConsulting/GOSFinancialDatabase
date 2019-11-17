CREATE FUNCTION [wct].[XL_LOG]
(@Number FLOAT (53), @Base FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[XL_LOG]

