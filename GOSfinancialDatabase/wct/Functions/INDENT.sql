﻿CREATE FUNCTION [wct].[INDENT]
(@Text NVARCHAR (MAX), @IndentChars NVARCHAR (4000), @IndentLevels INT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[INDENT]

