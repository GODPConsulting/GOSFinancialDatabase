CREATE FUNCTION [wct].[RANDBINOM]
(@Rows INT, @p FLOAT (53), @Trials INT)
RETURNS 
     TABLE (
        [Seq] INT NULL,
        [X]   INT NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RANDBINOM]

