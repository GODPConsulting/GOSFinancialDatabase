﻿CREATE FUNCTION [wct].[SYMMEIG]
(@MatrixQuery NVARCHAR (MAX), @Is3N BIT)
RETURNS 
     TABLE (
        [RowNum] INT          NULL,
        [ColNum] INT          NULL,
        [Value]  FLOAT (53)   NULL,
        [Type]   NVARCHAR (2) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SYMMEIG]

