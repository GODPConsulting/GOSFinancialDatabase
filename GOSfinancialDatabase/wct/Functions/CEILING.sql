CREATE FUNCTION [wct].[CEILING]
(@Number FLOAT (53), @Significance FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[CEILING]

