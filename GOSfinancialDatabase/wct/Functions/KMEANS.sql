CREATE FUNCTION [wct].[KMEANS]
(@dataQuery NVARCHAR (MAX), @meansQuery NVARCHAR (MAX), @numclusters INT, @nstart INT, @algorithm NVARCHAR (4000), @itermax INT, @seed INT, @Formula NVARCHAR (MAX))
RETURNS 
     TABLE (
        [label] NVARCHAR (15) NULL,
        [rowid] SQL_VARIANT   NULL,
        [colid] SQL_VARIANT   NULL,
        [val]   FLOAT (53)    NULL)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[KMEANS]

