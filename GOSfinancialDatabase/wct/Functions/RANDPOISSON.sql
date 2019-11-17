CREATE FUNCTION [wct].[RANDPOISSON]
(@Rows INT, @lambda FLOAT (53))
RETURNS 
     TABLE (
        [Seq] INT NULL,
        [X]   INT NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RANDPOISSON]

