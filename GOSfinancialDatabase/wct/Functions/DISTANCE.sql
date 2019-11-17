CREATE FUNCTION [wct].[DISTANCE]
(@SourceLat FLOAT (53), @SourceLong FLOAT (53), @DestLat FLOAT (53), @DestLong FLOAT (53), @Units NVARCHAR (4000))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[DISTANCE]

