﻿CREATE FUNCTION [wct].[RANDBETA]
(@Rows INT, @a FLOAT (53), @b FLOAT (53))
RETURNS 
     TABLE (
        [Seq] INT        NULL,
        [X]   FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[RANDBETA]

