﻿CREATE FUNCTION [wct].[FIFOend]
(@DataQuery NVARCHAR (MAX))
RETURNS 
     TABLE (
        [UID]       SQL_VARIANT NULL,
        [RowNumber] INT         NULL,
        [qty]       FLOAT (53)  NULL,
        [amt]       FLOAT (53)  NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[FIFOend]

