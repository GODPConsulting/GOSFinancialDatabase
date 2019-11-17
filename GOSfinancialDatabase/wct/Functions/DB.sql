CREATE FUNCTION [wct].[DB]
(@Cost FLOAT (53), @Salvage FLOAT (53), @Life FLOAT (53), @Per FLOAT (53), @Month FLOAT (53))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DB]

