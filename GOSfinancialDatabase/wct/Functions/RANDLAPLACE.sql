CREATE FUNCTION [wct].[RANDLAPLACE]
(@Rows INT, @Location FLOAT (53), @Scale FLOAT (53))
RETURNS 
     TABLE (
        [Seq] INT        NULL,
        [X]   FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RANDLAPLACE]

