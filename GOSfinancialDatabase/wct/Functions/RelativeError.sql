CREATE FUNCTION [wct].[RelativeError]
(@TrueValue FLOAT (53), @MeasuredValue FLOAT (53), @NullReturnValue FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RelativeError]

