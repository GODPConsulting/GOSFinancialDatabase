CREATE FUNCTION [wct].[INSTRREV]
(@Text NVARCHAR (MAX), @SearchString NVARCHAR (MAX), @Start INT, @CaseSensitive BIT)
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[INSTRREV]

