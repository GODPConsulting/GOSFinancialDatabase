CREATE FUNCTION [wct].[FIND]
(@Find_text NVARCHAR (MAX), @Within_text NVARCHAR (MAX), @Start INT)
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[FIND]

