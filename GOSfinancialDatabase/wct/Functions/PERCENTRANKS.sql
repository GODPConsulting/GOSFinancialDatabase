﻿CREATE FUNCTION [wct].[PERCENTRANKS]
(@xQuery NVARCHAR (MAX), @P NVARCHAR (MAX), @Pmeth NVARCHAR (4000))
RETURNS 
     TABLE (
        [P] FLOAT (53) NULL,
        [V] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PERCENTRANKS]

