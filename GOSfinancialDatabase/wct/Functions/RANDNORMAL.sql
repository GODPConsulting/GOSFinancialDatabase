CREATE FUNCTION [wct].[RANDNORMAL]
(@Rows INT, @mu FLOAT (53), @sigma FLOAT (53))
RETURNS 
     TABLE (
        [Seq] INT        NULL,
        [X]   FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RANDNORMAL]

