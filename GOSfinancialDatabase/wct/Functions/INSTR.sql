CREATE FUNCTION [wct].[INSTR]
(@Start INT, @Text NVARCHAR (MAX), @SearchString NVARCHAR (MAX), @CaseSensitive BIT)
RETURNS INT
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[INSTR]

