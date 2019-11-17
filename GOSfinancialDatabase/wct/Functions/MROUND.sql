CREATE FUNCTION [wct].[MROUND]
(@Number FLOAT (53), @Multiple FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MROUND]

