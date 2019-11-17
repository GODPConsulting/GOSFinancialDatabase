CREATE FUNCTION [wct].[PPD]
(@SettDate DATETIME, @FirstPayDate DATETIME, @pmtpyr INT, @NumPmts INT)
RETURNS DATETIME
AS
 EXTERNAL NAME [XLeratorDB_suitePLUS2008].[XLeratorDB_suitePLUS2008.UserDefinedFunctions].[PPD]

