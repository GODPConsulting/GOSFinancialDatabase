CREATE FUNCTION [wct].[NPNO]
(@SettDate DATETIME, @FirstPayDate DATETIME, @Pmtpyr INT, @NumPmts INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NPNO]

