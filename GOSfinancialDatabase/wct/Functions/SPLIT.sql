CREATE FUNCTION [wct].[SPLIT]
(@SourceString NVARCHAR (MAX), @Delimiter NVARCHAR (4000))
RETURNS 
     TABLE (
        [item] NVARCHAR (MAX) NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[SPLIT]

