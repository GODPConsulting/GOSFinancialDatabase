CREATE FUNCTION [wct].[MCROSS]
(@A NVARCHAR (MAX), @B NVARCHAR (MAX), @Is3N BIT)
RETURNS 
     TABLE (
        [RowNum]    INT        NULL,
        [ColNum]    INT        NULL,
        [ItemValue] FLOAT (53) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[MCROSS]

