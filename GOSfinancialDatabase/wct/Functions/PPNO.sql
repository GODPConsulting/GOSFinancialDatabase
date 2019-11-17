CREATE FUNCTION [wct].[PPNO]
(@SettDate DATETIME, @FirstPayDate DATETIME, @pmtpyr INT, @NumPmts INT)
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PPNO]

