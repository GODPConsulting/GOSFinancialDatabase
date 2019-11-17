CREATE FUNCTION [wct].[NPD]
(@SettDate DATETIME, @FirstPayDate DATETIME, @Pmtpyr INT, @NumPmts INT)
RETURNS DATETIME
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[NPD]

