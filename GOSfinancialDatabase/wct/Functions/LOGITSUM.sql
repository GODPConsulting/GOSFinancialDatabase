CREATE FUNCTION [wct].[LOGITSUM]
(@Matrix_RangeQuery NVARCHAR (MAX), @Success_ColumnNumber INT, @Failure_ColumnNumber INT)
RETURNS 
     TABLE (
        [stat_name] NVARCHAR (10) NULL,
        [idx]       INT           NULL,
        [stat_val]  FLOAT (53)    NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[LOGITSUM]

