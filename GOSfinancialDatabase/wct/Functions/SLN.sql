CREATE FUNCTION [wct].[SLN]
(@Cost FLOAT (53), @Salvage FLOAT (53), @Life FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SLN]

